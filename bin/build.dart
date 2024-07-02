import 'dart:io';
import 'package:bazel_builder/src/configuration_parser.dart';
import 'package:bazel_builder/src/structures.dart';
import 'package:bazel_builder/src/tools.dart';

void main() async {
  // Get the config preferences from the pubspec.yaml
  final config = parseConfig();

  // Print some info about the build
  printBuildInfo(config);

  List<PlatformFileNames> dynamicLibNames = [];
  final outputDir = getOutputDirectory();

  // Platform specific setup
  if (Platform.isMacOS) {
    await generatePodspecFile(outputDir);
  }

  // Build each of the targets
  for (var target in config.targets.entries) {
    final fileNames =
        PlatformFileNames(target.key, null, null, null, null, null);
    // final buildablePlatforms = getBuildablePlatforms(config);

    // Android Builds
    for (var platform in target.value.platforms.entries
        .where((p) => p.key == BuildPlatform.android)) {
      final profile = config.hostBuildVariants.android;

      if (profile == null) {
        print('Skipping Android build, no profile specified');
        continue;
      }

      Map<String, String> androidBuildPlatforms = {
        if (profile.arm) '--config=android_arm': 'armeabi-v7a',
        if (profile.arm64) '--config=android_arm64': 'arm64-v8a',
        if (profile.x86) '--config=android_x86': 'x86',
        if (profile.x86_64) '--config=android_x86_64': 'x86_64',
      };

      // On android, we build all of the architectures we can
      List<String> filenames = [];

      for (var platformConfig in androidBuildPlatforms.entries) {
        final artifacts = await buildTargetPlatform(
          platform.key,
          platform.value,
          endOptions: [platformConfig.key],
        );

        filenames.add(copyArtifactsToOutputDir(artifacts, outputDir, 'android',
            subDir: platformConfig.value));
      }

      if (filenames.isEmpty ||
          !filenames.every((name) => name == filenames.first)) {
        throw Exception(
            'Some of the android architectures produced differing file names');
      }

      updateFileNames(platform.key, config, filenames.first, fileNames);
    }

    // iOS Builds
    for (var platform in target.value.platforms.entries
        .where((p) => p.key == BuildPlatform.ios)) {
      final profile = config.hostBuildVariants.ios;

      if (profile == null) {
        print('Skipping iOS build, no profile specified');
        continue;
      }

      List<String> iosBuildOptions = [
        if (profile.buildIosSimulator == false)
          '--config=ios_arm64'
        else if (isMacOSArm())
          '--config=ios_sim_arm64'
        else
          '--config=ios_sim_x86_64'
      ];

      final artifacts = await buildTargetPlatform(
        platform.key,
        platform.value,
        endOptions: iosBuildOptions,
      );

      final fileName = copyArtifactsToOutputDir(artifacts, outputDir, 'ios');
      updateFileNames(platform.key, config, fileName, fileNames);
    }

    // MacOS Builds
    for (var platform in target.value.platforms.entries
        .where((p) => p.key == BuildPlatform.macos)) {
      final profile = config.hostBuildVariants.macos;

      if (profile == null) {
        print('Skipping MacOS build, no profile specified');
        continue;
      }

      List<String> macosBuildOptions = [
        if (profile.universal) '--config=macos_universal',
        if (!profile.universal && profile.arm64) '--config=macos_arm64',
        if (!profile.universal && profile.x86_64) '--config=macos_x86_64',
      ];

      // On mac, we build all of the architectures we can
      List<String> filenames = [];

      for (var platformConfig in macosBuildOptions) {
        final artifacts = await buildTargetPlatform(
          platform.key,
          platform.value,
          endOptions: [platformConfig],
        );

        filenames.add(copyArtifactsToOutputDir(artifacts, outputDir, 'macos')); // TODO
      }

      if (filenames.isEmpty ||
          !filenames.every((name) => name == filenames.first)) {
        throw Exception(
            'Some of the macos architectures produced differing file names');
      }

      updateFileNames(platform.key, config, filenames.first, fileNames);
    }

    // Linux Builds
    for (var platform in target.value.platforms.entries
        .where((p) => p.key == BuildPlatform.linux)) {
      final profile = config.hostBuildVariants.linux;

      if (profile == null) {
        print('Skipping MacOS build, no profile specified');
        continue;
      }

      List<String> linuxBuildOptions = [
        if (profile.arm64) '--config=linux_arm64',
        if (profile.x86_64) '--config=linux_x86_64',
      ];

      // On linux, we build all of the architectures we can
      List<String> filenames = [];

      for (var platformConfig in linuxBuildOptions) {
        final artifacts = await buildTargetPlatform(
          platform.key,
          platform.value,
          endOptions: [platformConfig],
        );

        filenames.add(copyArtifactsToOutputDir(artifacts, outputDir, 'linux')); // TODO cpus
      }

      if (filenames.isEmpty ||
          !filenames.every((name) => name == filenames.first)) {
        throw Exception(
            'Some of the linux architectures produced differing file names');
      }

      updateFileNames(platform.key, config, filenames.first, fileNames);
    }

    // Windows Builds
    for (var platform in target.value.platforms.entries
        .where((p) => p.key == BuildPlatform.windows)) {
      final profile = config.hostBuildVariants.windows;

      if (profile == null) {
        print('Skipping Windows build, no profile specified');
        continue;
      }

      List<String> windowsBuildOptions = [
        if (profile.arm64) '--config=windows_arm64',
        if (profile.x86_32) '--config=windows_x86_32',
        if (profile.x86_64) '--config=windows_x86_64',
      ];

      // On windows, we build all of the architectures we can
      List<String> filenames = [];

      for (var platformConfig in windowsBuildOptions) {
        final artifacts = await buildTargetPlatform(
          platform.key,
          platform.value,
          endOptions: [platformConfig],
        );

        filenames.add(copyArtifactsToOutputDir(artifacts, outputDir, 'windows')); // TODO cpus
      }

      if (filenames.isEmpty ||
          !filenames.every((name) => name == filenames.first)) {
        throw Exception(
            'Some of the windows architectures produced differing file names');
      }

      updateFileNames(platform.key, config, filenames.first, fileNames);
    }

    dynamicLibNames.add(fileNames);
  }

  await generateDynamicLibs(dynamicLibNames);
}

Future<List<String>> buildTargetPlatform(
    BuildPlatform platform, PlatformTarget target,
    {List<String> middleOptions = const [],
    List<String> endOptions = const []}) async {
  var result = await Process.run('bazel', [
    'build',
    ...middleOptions,
    target.target,
    ...endOptions,
  ]);

  if (result.exitCode != 0) {
    print('Error building $platform: ${result.stderr}');
    throw Exception('Failed to run bazel build for target: $platform');
  }

  var artifacts = (result.stderr as String)
      .split('\n')
      .where((line) => line.startsWith('  '))
      .map((line) => line.trim())
      .toList();

  print('Artifacts Built: $artifacts');
  return artifacts;
}
