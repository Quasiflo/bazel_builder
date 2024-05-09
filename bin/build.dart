import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:path/path.dart' as path;

void main() async {
  Map<String, dynamic> config = parseConfig('pubspec.yaml');

  Set<String> dynamicLibNames = {};

  var outputDir = Directory(path.join('build', 'shared_libs'));
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }
  var podspec = 'bazel_builder.podspec';
  await File(path.join(outputDir.path, podspec)).writeAsString(podspecContent);

  for (var target in config['targets']) {
    var result = await Process.run('bazel', ['build', target]);

    if (result.exitCode != 0) {
      print('Error building $target: ${result.stderr}');
      throw Exception('Failed to run bazel build for target: $target');
    }

    var artifacts = (result.stderr as String)
        .split('\n')
        .where((line) => line.startsWith('  '))
        .map((line) => line.trim())
        .toList();

    print('Artifacts Built: $artifacts');

    for (var artifact in artifacts) {
      var parts = artifact.split(RegExp(r'[\\/]'));
      var fileName = parts.last;
      var outputPath = path.join(outputDir.path, fileName);
      await File(artifact).copy(outputPath);

      var libName = path.basenameWithoutExtension(fileName);
      dynamicLibNames.add(libName);
    }
  }

  // Generate the DynamicLibs class
  var libsClassContent = generateDynamicLibsClass(dynamicLibNames);
  await File(path.join('lib', 'dynamic_libs.dart'))
      .writeAsString(libsClassContent);
}

// Parse the configuration options
Map<String, dynamic> parseConfig(String filePath) {
  File configFile = File(filePath);
  if (!configFile.existsSync()) {
    throw Exception('Configuration file not found at path: $filePath');
  }

  String yamlContent = configFile.readAsStringSync();
  Map yamlMap = loadYaml(yamlContent);
  if (!yamlMap.containsKey('bazel_builder_config')) {
    throw Exception(
        'The required "bazel_builder_config" key is not found in the YAML file.');
  }

  final bazelConfig = yamlMap['bazel_builder_config'];
  if (bazelConfig['targets'] == null) {
    throw Exception('Invalid or missing "targets" configuration.');
  }

  if (bazelConfig['targets'] is! List) {
    throw Exception('The "targets" key must be a list.');
  }

  return {
    'targets': List<String>.from(bazelConfig['targets']),
  };
}

String generateDynamicLibsClass(Set<String> libNames) {
  var getters = libNames
      .map((name) =>
          '  static String get ${nameWithoutLibPrefix(name)} => _getSharedLibraryName(\'${nameWithoutLibPrefix(name)}\');\n')
      .join();

  return '''
// ignore_for_file: non_constant_identifier_names
import 'dart:io';

class DynamicLibs {
$getters
  static String _getSharedLibraryName(String baseName) {
    if (Platform.isMacOS || Platform.isIOS) {
      return 'lib\$baseName.dylib'; // macOS and iOS use the .dylib extension
    } else if (Platform.isWindows) {
      return '\$baseName.dll'; // Windows uses the .dll extension
    } else if (Platform.isLinux || Platform.isAndroid) {
      return 'lib\$baseName.so'; // Linux and android uses the .so extension
    }
    throw UnsupportedError('Unsupported platform');
  }
}
''';
}

String nameWithoutLibPrefix(String name) =>
    name.startsWith('lib') ? name.substring(3) : name;

final podspecContent = '''
Pod::Spec.new do |s|
  s.name = "bazel_builder"
  s.version = "0.0.1"
  s.summary = "Bazel Builder links all your bazel generated dynamic libraries to the application."

  s.homepage = "https://github.com/Attempt3035/bazel_builder"
  s.author = "Attempt3035"
  s.source = { :path => "." }
  s.vendored_libraries = "*.dylib"
end

''';
