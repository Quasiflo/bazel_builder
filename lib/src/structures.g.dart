// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BazelBuilderConfigImpl _$$BazelBuilderConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$BazelBuilderConfigImpl(
      buildOnMacos: json['buildOnMacos'] == null
          ? null
          : BuildVariants.fromJson(
              json['buildOnMacos'] as Map<String, dynamic>),
      buildOnLinux: json['buildOnLinux'] == null
          ? null
          : BuildVariants.fromJson(
              json['buildOnLinux'] as Map<String, dynamic>),
      buildOnWindows: json['buildOnWindows'] == null
          ? null
          : BuildVariants.fromJson(
              json['buildOnWindows'] as Map<String, dynamic>),
      targets: (json['targets'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Target.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$BazelBuilderConfigImplToJson(
        _$BazelBuilderConfigImpl instance) =>
    <String, dynamic>{
      'buildOnMacos': instance.buildOnMacos?.toJson(),
      'buildOnLinux': instance.buildOnLinux?.toJson(),
      'buildOnWindows': instance.buildOnWindows?.toJson(),
      'targets': instance.targets.map((k, e) => MapEntry(k, e.toJson())),
    };

_$BuildVariantsImpl _$$BuildVariantsImplFromJson(Map<String, dynamic> json) =>
    _$BuildVariantsImpl(
      macos: json['macos'] == null
          ? null
          : MacosBuildProfile.fromJson(json['macos'] as Map<String, dynamic>),
      linux: json['linux'] == null
          ? null
          : LinuxBuildProfile.fromJson(json['linux'] as Map<String, dynamic>),
      windows: json['windows'] == null
          ? null
          : WindowsBuildProfile.fromJson(
              json['windows'] as Map<String, dynamic>),
      ios: json['ios'] == null
          ? null
          : IosBuildProfile.fromJson(json['ios'] as Map<String, dynamic>),
      android: json['android'] == null
          ? null
          : AndroidBuildProfile.fromJson(
              json['android'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BuildVariantsImplToJson(_$BuildVariantsImpl instance) =>
    <String, dynamic>{
      'macos': instance.macos?.toJson(),
      'linux': instance.linux?.toJson(),
      'windows': instance.windows?.toJson(),
      'ios': instance.ios?.toJson(),
      'android': instance.android?.toJson(),
    };

_$LinuxBuildProfileImpl _$$LinuxBuildProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$LinuxBuildProfileImpl(
      x86_64: json['x86_64'] as bool? ?? false,
      arm64: json['arm64'] as bool? ?? false,
    );

Map<String, dynamic> _$$LinuxBuildProfileImplToJson(
        _$LinuxBuildProfileImpl instance) =>
    <String, dynamic>{
      'x86_64': instance.x86_64,
      'arm64': instance.arm64,
    };

_$DesktopBuildProfileImpl _$$DesktopBuildProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$DesktopBuildProfileImpl(
      x86_32: json['x86_32'] as bool? ?? false,
      x86_64: json['x86_64'] as bool? ?? false,
      arm64: json['arm64'] as bool? ?? false,
    );

Map<String, dynamic> _$$DesktopBuildProfileImplToJson(
        _$DesktopBuildProfileImpl instance) =>
    <String, dynamic>{
      'x86_32': instance.x86_32,
      'x86_64': instance.x86_64,
      'arm64': instance.arm64,
    };

_$MacosBuildProfileImpl _$$MacosBuildProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$MacosBuildProfileImpl(
      universal: json['universal'] as bool? ?? false,
      x86_64: json['x86_64'] as bool? ?? false,
      arm64: json['arm64'] as bool? ?? false,
    );

Map<String, dynamic> _$$MacosBuildProfileImplToJson(
        _$MacosBuildProfileImpl instance) =>
    <String, dynamic>{
      'universal': instance.universal,
      'x86_64': instance.x86_64,
      'arm64': instance.arm64,
    };

_$WindowsBuildProfileImpl _$$WindowsBuildProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$WindowsBuildProfileImpl(
      buildIosSimulator: json['buildIosSimulator'] as bool? ?? true,
    );

Map<String, dynamic> _$$WindowsBuildProfileImplToJson(
        _$WindowsBuildProfileImpl instance) =>
    <String, dynamic>{
      'buildIosSimulator': instance.buildIosSimulator,
    };

_$AndroidBuildProfileImpl _$$AndroidBuildProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$AndroidBuildProfileImpl(
      arm: json['arm'] as bool? ?? false,
      arm64: json['arm64'] as bool? ?? false,
      x86: json['x86'] as bool? ?? false,
      x86_64: json['x86_64'] as bool? ?? false,
    );

Map<String, dynamic> _$$AndroidBuildProfileImplToJson(
        _$AndroidBuildProfileImpl instance) =>
    <String, dynamic>{
      'arm': instance.arm,
      'arm64': instance.arm64,
      'x86': instance.x86,
      'x86_64': instance.x86_64,
    };

_$TargetImpl _$$TargetImplFromJson(Map<String, dynamic> json) => _$TargetImpl(
      platforms: (json['platforms'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$BuildPlatformEnumMap, k),
            PlatformTarget.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$TargetImplToJson(_$TargetImpl instance) =>
    <String, dynamic>{
      'platforms':
          instance.platforms.map((k, e) => MapEntry(k.toJson(), e.toJson())),
    };

const _$BuildPlatformEnumMap = {
  BuildPlatform.ios: 'ios',
  BuildPlatform.android: 'android',
  BuildPlatform.macos: 'macos',
  BuildPlatform.windows: 'windows',
  BuildPlatform.linux: 'linux',
};

_$PlatformTargetImpl _$$PlatformTargetImplFromJson(Map<String, dynamic> json) =>
    _$PlatformTargetImpl(
      target: json['target'] as String,
    );

Map<String, dynamic> _$$PlatformTargetImplToJson(
        _$PlatformTargetImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
    };
