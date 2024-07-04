import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';
import 'package:native_add_bazel/dynamic_libs.dart';
import 'package:native_add_bazel/native_add/native_add_bindings.dart';

/// A very short-lived native function.
///
/// For very short-lived functions, it is fine to call them on the main isolate.
/// They will block the Dart execution while running the native function, so
/// only do this for native functions which are guaranteed to be short-lived.
int sum(final int a, final int b) => _bindings.sum(a, b);

/// A longer lived native function, which occupies the thread calling it.
///
/// Do not call these kind of native functions in the main isolate. They will
/// block Dart execution. This will cause dropped frames in Flutter applications.
/// Instead, call these native functions on a separate isolate.
///
/// Modify this to suit your own use case. Example use cases:
///
/// 1. Reuse a single isolate for various different kinds of requests.
/// 2. Use multiple helper isolates for parallel execution.
Future<int> sumAsync(final int a, final int b) async {
  final helperIsolateSendPort = await _helperIsolateSendPort;
  final requestId = _nextSumRequestId++;

  final request = _SumRequest(requestId, a, b);
  final completer = Completer<int>();

  _sumRequests[requestId] = completer;
  helperIsolateSendPort.send(request);
  return completer.future;
}

/// The dynamic library in which the symbols for [SimlinkBindings] can be found.
final _dylib = DynamicLibrary.open(DynamicLibs.NativeAdd);

/// The bindings to the native functions in [_dylib].
final SimlinkBindings _bindings = SimlinkBindings(_dylib);

/// A request to compute `sum`.
///
/// Typically sent from one isolate to another.
class _SumRequest {
  const _SumRequest(this.id, this.a, this.b);
  final int id;
  final int a;
  final int b;
}

/// A response with the result of `sum`.
///
/// Typically sent from one isolate to another.
class _SumResponse {
  const _SumResponse(this.id, this.result);
  final int id;
  final int result;
}

/// Counter to identify [_SumRequest]s and [_SumResponse]s.
int _nextSumRequestId = 0;

/// Mapping from [_SumRequest] `id`s to the completers corresponding to the correct future of the pending request.
final Map<int, Completer<int>> _sumRequests = <int, Completer<int>>{};

/// The SendPort belonging to the helper isolate.
Future<SendPort> _helperIsolateSendPort = () async {
  // The helper isolate is going to send us back a SendPort, which we want to
  // wait for.
  final completer = Completer<SendPort>();

  // Receive port on the main isolate to receive messages from the helper.
  // We receive two types of messages:
  // 1. A port to send messages on.
  // 2. Responses to requests we sent.
  final receivePort = ReceivePort()
    ..listen((final dynamic data) {
      if (data is SendPort) {
        // The helper isolate sent us the port on which we can sent it requests.
        completer.complete(data);
        return;
      }
      if (data is _SumResponse) {
        // The helper isolate sent us a response to a request we sent.
        final completer = _sumRequests[data.id]!;
        _sumRequests.remove(data.id);
        completer.complete(data.result);
        return;
      }
      throw UnsupportedError('Unsupported message type: ${data.runtimeType}');
    });

  // Start the helper isolate.
  await Isolate.spawn(
    (final sendPort) async {
      final helperReceivePort = ReceivePort()
        ..listen((final dynamic data) {
          // On the helper isolate listen to requests and respond to them.
          if (data is _SumRequest) {
            final result = _bindings.sum_long_running(data.a, data.b);
            final response = _SumResponse(data.id, result);
            sendPort.send(response);
            return;
          }
          throw UnsupportedError(
            'Unsupported message type: ${data.runtimeType}',
          );
        });

      // Send the port to the main isolate on which we can receive requests.
      sendPort.send(helperReceivePort.sendPort);
    },
    receivePort.sendPort,
  );

  // Wait until the helper isolate has sent us back the SendPort on which we can start sending requests.
  return completer.future;
}();
