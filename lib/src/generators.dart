import 'package:bazel_builder/src/structures.dart';

String generateDynamicLibsClass(List<PlatformFileNames> libNames) {
  var getters = libNames.map((lib) {
    return '''
  static String get ${lib.name} => _getSharedLibraryName(
    '${lib.ios ?? ''}', '${lib.macos ?? ''}', '${lib.android ?? ''}', '${lib.windows ?? ''}', '${lib.linux ?? ''}');
''';
  }).join();

  return '''
// ignore_for_file: non_constant_identifier_names, avoid_classes_with_only_static_members, require_trailing_commas
import 'dart:io';

class DynamicLibs {
$getters
  static String _getSharedLibraryName(
    final String iosName,
    final String macosName,
    final String androidName,
    final String windowsName,
    final String linuxName,
  ) {
    if (Platform.isIOS && iosName.isNotEmpty) {
      return '\$iosName.framework/\$iosName'; // iOS uses the framework system
    } else if (Platform.isMacOS && macosName.isNotEmpty) {
      return '\$macosName.dylib'; // macOS uses the .dylib extension
    } else if (Platform.isAndroid && androidName.isNotEmpty) {
      return '\$androidName.so'; // Android uses the .so extension
    } else if (Platform.isWindows && windowsName.isNotEmpty) {
      return '\$windowsName.dll'; // Windows uses the .dll extension
    } else if (Platform.isLinux && linuxName.isNotEmpty) {
      return '\$linuxName.so'; // Linux uses the .so extension
    }
    throw UnsupportedError('Unsupported platform or missing library name');
  }
}
''';
}

final podspecContent = '''
Pod::Spec.new do |s|
  s.name = "bazel_builder"
  s.version = "0.0.1"
  s.summary = "Bazel Builder links all your bazel generated dynamic libraries to the application."
  s.homepage = "https://github.com/Quasiflo/bazel_builder"
  s.author = { "Attempt3035" => "dev@rdxip.com" }

  # Specify the license
  s.license = { :type => "MIT", :file => "LICENSE" }

  # Provide a valid source attribute
  s.source = { :path => "." }

  # Conditional settings for iOS
  s.ios.deployment_target = "9.0"
  s.ios.vendored_frameworks = "ios/*.framework"

  # Conditional settings for macOS
  s.osx.deployment_target = "10.11"
  s.osx.vendored_libraries = "macos/*.dylib"
end

''';
