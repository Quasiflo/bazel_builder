import 'dart:io';
import 'package:bazel_builder/src/generators.dart';
import 'package:path/path.dart' as path;
import 'package:bazel_builder/src/structures.dart';

bool isMacOSArm() {
  if (Platform.isMacOS) {
    var result = Process.runSync('uname', ['-m']);
    if (result.exitCode == 0) {
      var architecture = result.stdout.trim();
      return architecture == 'arm64';
    }
  }
  return false;
}

void printBuildInfo(BazelBuilderConfig config) {
  final buildablePlatforms = getBuildablePlatforms(config);

  print('Building on host: ${Platform.operatingSystem}');
  print('Building platforms: $buildablePlatforms');

  // if (buildablePlatforms.contains(BuildPlatform.ios)) {
  //   if ()
  //   print('Building for simulator NOT a real iOS device');
  // } else {
  //   print('Building for real iOS device, NOT simulator');
  // }
}

Directory getOutputDirectory() {
  var outputDir = Directory(path.join('build', 'shared_libs'));
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }
  return outputDir;
}

Future<void> generatePodspecFile(Directory outputDir) async {
  var podspec = 'bazel_builder.podspec';
  await File(path.join(outputDir.path, podspec)).writeAsString(podspecContent);
}

BuildVariants getBuildablePlatforms(BazelBuilderConfig config) {
  if (Platform.isMacOS && config.buildOnMacos != null) {
    return config.buildOnMacos!;
  } else if (Platform.isLinux && config.buildOnLinux != null) {
    return config.buildOnLinux!;
  } else if (Platform.isWindows && config.buildOnWindows != null) {
    return config.buildOnWindows!;
  } else {
    throw Exception(
        'No platforms specified for ${Platform.operatingSystem} to build');
  }
}

String copyArtifactsToOutputDir(
    List<String> artifacts, Directory outputDir, String platformDir,
    {String? subDir}) {
  if (artifacts.length != 1) {
    throw Exception('Expected only one artifact, found ${artifacts.length}');
  }

  var parts = artifacts.first.split(RegExp(r'[\\/]'));
  var fileName = parts.last;
  var outputPath = subDir != null
      ? Directory(path.join(outputDir.path, platformDir, subDir, fileName))
      : Directory(path.join(outputDir.path, platformDir, fileName));
  if (!outputPath.parent.existsSync()) {
    outputPath.parent.createSync(recursive: true);
  }

  print('Copying artifact: ${artifacts.first} to ${outputPath.parent}');

  File(artifacts.first).copySync(outputPath.path);

  if (path.extension(fileName) == '.zip') {
    Process.runSync('unzip', ['-o', outputPath.path, '-d', outputPath.parent.path]);
  }

  return fileName;
}

void updateFileNames(BuildPlatform platform, BazelBuilderConfig config,
    String fileName, PlatformFileNames fileNames) {
  final filenameWithoutExtension = fileName.split('.').first;

  if (platform == BuildPlatform.ios) {
    fileNames.ios = filenameWithoutExtension;
  } else if (platform == BuildPlatform.macos) {
    fileNames.macos = filenameWithoutExtension;
  } else if (platform == BuildPlatform.android) {
    fileNames.android = filenameWithoutExtension;
  } else if (platform == BuildPlatform.windows) {
    fileNames.windows = filenameWithoutExtension;
  } else if (platform == BuildPlatform.linux) {
    fileNames.linux = filenameWithoutExtension;
  }
}

Future<void> generateDynamicLibs(
    List<PlatformFileNames> dynamicLibNames) async {
  var libsClassContent = generateDynamicLibsClass(dynamicLibNames);
  await File(path.join('lib', 'dynamic_libs.dart'))
      .writeAsString(libsClassContent);
}
