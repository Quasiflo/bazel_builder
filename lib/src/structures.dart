import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'structures.freezed.dart';
part 'structures.g.dart';

@freezed
class BazelBuilderConfig with _$BazelBuilderConfig {
  const BazelBuilderConfig._();

  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory BazelBuilderConfig({
    BuildVariants? buildOnMacos,
    BuildVariants? buildOnLinux,
    BuildVariants? buildOnWindows,
    required Map<String, Target> targets,
  }) = _BazelBuilderConfig;

  factory BazelBuilderConfig.fromJson(Map<String, dynamic> json) =>
      _$BazelBuilderConfigFromJson(json);

  BuildVariants get hostBuildVariants {
    if (Platform.isMacOS) {
      return buildOnMacos!;
    } else if (Platform.isLinux) {
      return buildOnLinux!;
    } else if (Platform.isWindows) {
      return buildOnWindows!;
    }
    throw UnsupportedError('Unsupported platform');
  }
}

@freezed
class BuildVariants with _$BuildVariants {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory BuildVariants({
    MacosBuildProfile? macos,
    LinuxBuildProfile? linux,
    WindowsBuildProfile? windows,
    IosBuildProfile? ios,
    AndroidBuildProfile? android,
  }) = _BuildVariants;

  factory BuildVariants.fromJson(Map<String, dynamic> json) =>
      _$BuildVariantsFromJson(json);
}

@freezed
class LinuxBuildProfile with _$LinuxBuildProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory LinuxBuildProfile({
    @Default(false) bool x86_64,
    @Default(false) bool arm64,
  }) = _LinuxBuildProfile;

  factory LinuxBuildProfile.fromJson(Map<String, dynamic> json) =>
      _$LinuxBuildProfileFromJson(json);
}

@freezed
class WindowsBuildProfile with _$WindowsBuildProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory WindowsBuildProfile({
    @Default(false) bool x86_32,
    @Default(false) bool x86_64,
    @Default(false) bool arm64,
  }) = _DesktopBuildProfile;

  factory WindowsBuildProfile.fromJson(Map<String, dynamic> json) =>
      _$WindowsBuildProfileFromJson(json);
}

@freezed
class MacosBuildProfile with _$MacosBuildProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory MacosBuildProfile({
    @Default(false) bool universal,
    @Default(false) bool x86_64,
    @Default(false) bool arm64,
  }) = _MacosBuildProfile;

  factory MacosBuildProfile.fromJson(Map<String, dynamic> json) =>
      _$MacosBuildProfileFromJson(json);
}

@freezed
class IosBuildProfile with _$IosBuildProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory IosBuildProfile({
    @Default(true) bool buildIosSimulator,
  }) = _WindowsBuildProfile;

  factory IosBuildProfile.fromJson(Map<String, dynamic> json) =>
      _$IosBuildProfileFromJson(json);
}

@freezed
class AndroidBuildProfile with _$AndroidBuildProfile {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory AndroidBuildProfile({
    @Default(false) bool arm,
    @Default(false) bool arm64,
    @Default(false) bool x86,
    @Default(false) bool x86_64,
  }) = _AndroidBuildProfile;

  factory AndroidBuildProfile.fromJson(Map<String, dynamic> json) =>
      _$AndroidBuildProfileFromJson(json);
}

@freezed
class Target with _$Target {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Target({
    required Map<BuildPlatform, PlatformTarget> platforms,
  }) = _Target;

  factory Target.fromJson(Map<String, dynamic> json) => _$TargetFromJson(json);
}

@freezed
class PlatformTarget with _$PlatformTarget {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory PlatformTarget({
    required String target,
  }) = _PlatformTarget;

  factory PlatformTarget.fromJson(Map<String, dynamic> json) =>
      _$PlatformTargetFromJson(json);
}

enum BuildPlatform {
  ios('ios'),
  android('android'),
  macos('macos'),
  windows('windows'),
  linux('linux');

  final String value;

  const BuildPlatform(this.value);

  @override
  String toString() => value;

  static BuildPlatform fromString(String value) {
    for (BuildPlatform platform in BuildPlatform.values) {
      if (platform.value == value) {
        return platform;
      }
    }
    throw ArgumentError('No enum value with that string: $value');
  }

  static BuildPlatform fromJson(String value) => fromString(value);

  String toJson() => value;
}

class PlatformFileNames {
  String name;
  String? ios;
  String? macos;
  String? android;
  String? windows;
  String? linux;

  PlatformFileNames(
      this.name, this.ios, this.macos, this.android, this.windows, this.linux);
}
