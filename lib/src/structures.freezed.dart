// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'structures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BazelBuilderConfig _$BazelBuilderConfigFromJson(Map<String, dynamic> json) {
  return _BazelBuilderConfig.fromJson(json);
}

/// @nodoc
mixin _$BazelBuilderConfig {
  BuildVariants? get buildOnMacos => throw _privateConstructorUsedError;
  BuildVariants? get buildOnLinux => throw _privateConstructorUsedError;
  BuildVariants? get buildOnWindows => throw _privateConstructorUsedError;
  Map<String, Target> get targets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BazelBuilderConfigCopyWith<BazelBuilderConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BazelBuilderConfigCopyWith<$Res> {
  factory $BazelBuilderConfigCopyWith(
          BazelBuilderConfig value, $Res Function(BazelBuilderConfig) then) =
      _$BazelBuilderConfigCopyWithImpl<$Res, BazelBuilderConfig>;
  @useResult
  $Res call(
      {BuildVariants? buildOnMacos,
      BuildVariants? buildOnLinux,
      BuildVariants? buildOnWindows,
      Map<String, Target> targets});

  $BuildVariantsCopyWith<$Res>? get buildOnMacos;
  $BuildVariantsCopyWith<$Res>? get buildOnLinux;
  $BuildVariantsCopyWith<$Res>? get buildOnWindows;
}

/// @nodoc
class _$BazelBuilderConfigCopyWithImpl<$Res, $Val extends BazelBuilderConfig>
    implements $BazelBuilderConfigCopyWith<$Res> {
  _$BazelBuilderConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildOnMacos = freezed,
    Object? buildOnLinux = freezed,
    Object? buildOnWindows = freezed,
    Object? targets = null,
  }) {
    return _then(_value.copyWith(
      buildOnMacos: freezed == buildOnMacos
          ? _value.buildOnMacos
          : buildOnMacos // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      buildOnLinux: freezed == buildOnLinux
          ? _value.buildOnLinux
          : buildOnLinux // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      buildOnWindows: freezed == buildOnWindows
          ? _value.buildOnWindows
          : buildOnWindows // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      targets: null == targets
          ? _value.targets
          : targets // ignore: cast_nullable_to_non_nullable
              as Map<String, Target>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildVariantsCopyWith<$Res>? get buildOnMacos {
    if (_value.buildOnMacos == null) {
      return null;
    }

    return $BuildVariantsCopyWith<$Res>(_value.buildOnMacos!, (value) {
      return _then(_value.copyWith(buildOnMacos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildVariantsCopyWith<$Res>? get buildOnLinux {
    if (_value.buildOnLinux == null) {
      return null;
    }

    return $BuildVariantsCopyWith<$Res>(_value.buildOnLinux!, (value) {
      return _then(_value.copyWith(buildOnLinux: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildVariantsCopyWith<$Res>? get buildOnWindows {
    if (_value.buildOnWindows == null) {
      return null;
    }

    return $BuildVariantsCopyWith<$Res>(_value.buildOnWindows!, (value) {
      return _then(_value.copyWith(buildOnWindows: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BazelBuilderConfigImplCopyWith<$Res>
    implements $BazelBuilderConfigCopyWith<$Res> {
  factory _$$BazelBuilderConfigImplCopyWith(_$BazelBuilderConfigImpl value,
          $Res Function(_$BazelBuilderConfigImpl) then) =
      __$$BazelBuilderConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildVariants? buildOnMacos,
      BuildVariants? buildOnLinux,
      BuildVariants? buildOnWindows,
      Map<String, Target> targets});

  @override
  $BuildVariantsCopyWith<$Res>? get buildOnMacos;
  @override
  $BuildVariantsCopyWith<$Res>? get buildOnLinux;
  @override
  $BuildVariantsCopyWith<$Res>? get buildOnWindows;
}

/// @nodoc
class __$$BazelBuilderConfigImplCopyWithImpl<$Res>
    extends _$BazelBuilderConfigCopyWithImpl<$Res, _$BazelBuilderConfigImpl>
    implements _$$BazelBuilderConfigImplCopyWith<$Res> {
  __$$BazelBuilderConfigImplCopyWithImpl(_$BazelBuilderConfigImpl _value,
      $Res Function(_$BazelBuilderConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildOnMacos = freezed,
    Object? buildOnLinux = freezed,
    Object? buildOnWindows = freezed,
    Object? targets = null,
  }) {
    return _then(_$BazelBuilderConfigImpl(
      buildOnMacos: freezed == buildOnMacos
          ? _value.buildOnMacos
          : buildOnMacos // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      buildOnLinux: freezed == buildOnLinux
          ? _value.buildOnLinux
          : buildOnLinux // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      buildOnWindows: freezed == buildOnWindows
          ? _value.buildOnWindows
          : buildOnWindows // ignore: cast_nullable_to_non_nullable
              as BuildVariants?,
      targets: null == targets
          ? _value._targets
          : targets // ignore: cast_nullable_to_non_nullable
              as Map<String, Target>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BazelBuilderConfigImpl extends _BazelBuilderConfig {
  const _$BazelBuilderConfigImpl(
      {this.buildOnMacos,
      this.buildOnLinux,
      this.buildOnWindows,
      required final Map<String, Target> targets})
      : _targets = targets,
        super._();

  factory _$BazelBuilderConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BazelBuilderConfigImplFromJson(json);

  @override
  final BuildVariants? buildOnMacos;
  @override
  final BuildVariants? buildOnLinux;
  @override
  final BuildVariants? buildOnWindows;
  final Map<String, Target> _targets;
  @override
  Map<String, Target> get targets {
    if (_targets is EqualUnmodifiableMapView) return _targets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_targets);
  }

  @override
  String toString() {
    return 'BazelBuilderConfig(buildOnMacos: $buildOnMacos, buildOnLinux: $buildOnLinux, buildOnWindows: $buildOnWindows, targets: $targets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BazelBuilderConfigImpl &&
            (identical(other.buildOnMacos, buildOnMacos) ||
                other.buildOnMacos == buildOnMacos) &&
            (identical(other.buildOnLinux, buildOnLinux) ||
                other.buildOnLinux == buildOnLinux) &&
            (identical(other.buildOnWindows, buildOnWindows) ||
                other.buildOnWindows == buildOnWindows) &&
            const DeepCollectionEquality().equals(other._targets, _targets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buildOnMacos, buildOnLinux,
      buildOnWindows, const DeepCollectionEquality().hash(_targets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BazelBuilderConfigImplCopyWith<_$BazelBuilderConfigImpl> get copyWith =>
      __$$BazelBuilderConfigImplCopyWithImpl<_$BazelBuilderConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BazelBuilderConfigImplToJson(
      this,
    );
  }
}

abstract class _BazelBuilderConfig extends BazelBuilderConfig {
  const factory _BazelBuilderConfig(
      {final BuildVariants? buildOnMacos,
      final BuildVariants? buildOnLinux,
      final BuildVariants? buildOnWindows,
      required final Map<String, Target> targets}) = _$BazelBuilderConfigImpl;
  const _BazelBuilderConfig._() : super._();

  factory _BazelBuilderConfig.fromJson(Map<String, dynamic> json) =
      _$BazelBuilderConfigImpl.fromJson;

  @override
  BuildVariants? get buildOnMacos;
  @override
  BuildVariants? get buildOnLinux;
  @override
  BuildVariants? get buildOnWindows;
  @override
  Map<String, Target> get targets;
  @override
  @JsonKey(ignore: true)
  _$$BazelBuilderConfigImplCopyWith<_$BazelBuilderConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuildVariants _$BuildVariantsFromJson(Map<String, dynamic> json) {
  return _BuildVariants.fromJson(json);
}

/// @nodoc
mixin _$BuildVariants {
  MacosBuildProfile? get macos => throw _privateConstructorUsedError;
  LinuxBuildProfile? get linux => throw _privateConstructorUsedError;
  WindowsBuildProfile? get windows => throw _privateConstructorUsedError;
  IosBuildProfile? get ios => throw _privateConstructorUsedError;
  AndroidBuildProfile? get android => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildVariantsCopyWith<BuildVariants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildVariantsCopyWith<$Res> {
  factory $BuildVariantsCopyWith(
          BuildVariants value, $Res Function(BuildVariants) then) =
      _$BuildVariantsCopyWithImpl<$Res, BuildVariants>;
  @useResult
  $Res call(
      {MacosBuildProfile? macos,
      LinuxBuildProfile? linux,
      WindowsBuildProfile? windows,
      IosBuildProfile? ios,
      AndroidBuildProfile? android});

  $MacosBuildProfileCopyWith<$Res>? get macos;
  $LinuxBuildProfileCopyWith<$Res>? get linux;
  $WindowsBuildProfileCopyWith<$Res>? get windows;
  $IosBuildProfileCopyWith<$Res>? get ios;
  $AndroidBuildProfileCopyWith<$Res>? get android;
}

/// @nodoc
class _$BuildVariantsCopyWithImpl<$Res, $Val extends BuildVariants>
    implements $BuildVariantsCopyWith<$Res> {
  _$BuildVariantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macos = freezed,
    Object? linux = freezed,
    Object? windows = freezed,
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_value.copyWith(
      macos: freezed == macos
          ? _value.macos
          : macos // ignore: cast_nullable_to_non_nullable
              as MacosBuildProfile?,
      linux: freezed == linux
          ? _value.linux
          : linux // ignore: cast_nullable_to_non_nullable
              as LinuxBuildProfile?,
      windows: freezed == windows
          ? _value.windows
          : windows // ignore: cast_nullable_to_non_nullable
              as WindowsBuildProfile?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as IosBuildProfile?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as AndroidBuildProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MacosBuildProfileCopyWith<$Res>? get macos {
    if (_value.macos == null) {
      return null;
    }

    return $MacosBuildProfileCopyWith<$Res>(_value.macos!, (value) {
      return _then(_value.copyWith(macos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinuxBuildProfileCopyWith<$Res>? get linux {
    if (_value.linux == null) {
      return null;
    }

    return $LinuxBuildProfileCopyWith<$Res>(_value.linux!, (value) {
      return _then(_value.copyWith(linux: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindowsBuildProfileCopyWith<$Res>? get windows {
    if (_value.windows == null) {
      return null;
    }

    return $WindowsBuildProfileCopyWith<$Res>(_value.windows!, (value) {
      return _then(_value.copyWith(windows: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IosBuildProfileCopyWith<$Res>? get ios {
    if (_value.ios == null) {
      return null;
    }

    return $IosBuildProfileCopyWith<$Res>(_value.ios!, (value) {
      return _then(_value.copyWith(ios: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AndroidBuildProfileCopyWith<$Res>? get android {
    if (_value.android == null) {
      return null;
    }

    return $AndroidBuildProfileCopyWith<$Res>(_value.android!, (value) {
      return _then(_value.copyWith(android: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuildVariantsImplCopyWith<$Res>
    implements $BuildVariantsCopyWith<$Res> {
  factory _$$BuildVariantsImplCopyWith(
          _$BuildVariantsImpl value, $Res Function(_$BuildVariantsImpl) then) =
      __$$BuildVariantsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MacosBuildProfile? macos,
      LinuxBuildProfile? linux,
      WindowsBuildProfile? windows,
      IosBuildProfile? ios,
      AndroidBuildProfile? android});

  @override
  $MacosBuildProfileCopyWith<$Res>? get macos;
  @override
  $LinuxBuildProfileCopyWith<$Res>? get linux;
  @override
  $WindowsBuildProfileCopyWith<$Res>? get windows;
  @override
  $IosBuildProfileCopyWith<$Res>? get ios;
  @override
  $AndroidBuildProfileCopyWith<$Res>? get android;
}

/// @nodoc
class __$$BuildVariantsImplCopyWithImpl<$Res>
    extends _$BuildVariantsCopyWithImpl<$Res, _$BuildVariantsImpl>
    implements _$$BuildVariantsImplCopyWith<$Res> {
  __$$BuildVariantsImplCopyWithImpl(
      _$BuildVariantsImpl _value, $Res Function(_$BuildVariantsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macos = freezed,
    Object? linux = freezed,
    Object? windows = freezed,
    Object? ios = freezed,
    Object? android = freezed,
  }) {
    return _then(_$BuildVariantsImpl(
      macos: freezed == macos
          ? _value.macos
          : macos // ignore: cast_nullable_to_non_nullable
              as MacosBuildProfile?,
      linux: freezed == linux
          ? _value.linux
          : linux // ignore: cast_nullable_to_non_nullable
              as LinuxBuildProfile?,
      windows: freezed == windows
          ? _value.windows
          : windows // ignore: cast_nullable_to_non_nullable
              as WindowsBuildProfile?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as IosBuildProfile?,
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as AndroidBuildProfile?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BuildVariantsImpl implements _BuildVariants {
  const _$BuildVariantsImpl(
      {this.macos, this.linux, this.windows, this.ios, this.android});

  factory _$BuildVariantsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildVariantsImplFromJson(json);

  @override
  final MacosBuildProfile? macos;
  @override
  final LinuxBuildProfile? linux;
  @override
  final WindowsBuildProfile? windows;
  @override
  final IosBuildProfile? ios;
  @override
  final AndroidBuildProfile? android;

  @override
  String toString() {
    return 'BuildVariants(macos: $macos, linux: $linux, windows: $windows, ios: $ios, android: $android)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildVariantsImpl &&
            (identical(other.macos, macos) || other.macos == macos) &&
            (identical(other.linux, linux) || other.linux == linux) &&
            (identical(other.windows, windows) || other.windows == windows) &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.android, android) || other.android == android));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, macos, linux, windows, ios, android);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildVariantsImplCopyWith<_$BuildVariantsImpl> get copyWith =>
      __$$BuildVariantsImplCopyWithImpl<_$BuildVariantsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildVariantsImplToJson(
      this,
    );
  }
}

abstract class _BuildVariants implements BuildVariants {
  const factory _BuildVariants(
      {final MacosBuildProfile? macos,
      final LinuxBuildProfile? linux,
      final WindowsBuildProfile? windows,
      final IosBuildProfile? ios,
      final AndroidBuildProfile? android}) = _$BuildVariantsImpl;

  factory _BuildVariants.fromJson(Map<String, dynamic> json) =
      _$BuildVariantsImpl.fromJson;

  @override
  MacosBuildProfile? get macos;
  @override
  LinuxBuildProfile? get linux;
  @override
  WindowsBuildProfile? get windows;
  @override
  IosBuildProfile? get ios;
  @override
  AndroidBuildProfile? get android;
  @override
  @JsonKey(ignore: true)
  _$$BuildVariantsImplCopyWith<_$BuildVariantsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinuxBuildProfile _$LinuxBuildProfileFromJson(Map<String, dynamic> json) {
  return _LinuxBuildProfile.fromJson(json);
}

/// @nodoc
mixin _$LinuxBuildProfile {
  bool get x86_64 => throw _privateConstructorUsedError;
  bool get arm64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinuxBuildProfileCopyWith<LinuxBuildProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinuxBuildProfileCopyWith<$Res> {
  factory $LinuxBuildProfileCopyWith(
          LinuxBuildProfile value, $Res Function(LinuxBuildProfile) then) =
      _$LinuxBuildProfileCopyWithImpl<$Res, LinuxBuildProfile>;
  @useResult
  $Res call({bool x86_64, bool arm64});
}

/// @nodoc
class _$LinuxBuildProfileCopyWithImpl<$Res, $Val extends LinuxBuildProfile>
    implements $LinuxBuildProfileCopyWith<$Res> {
  _$LinuxBuildProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_value.copyWith(
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinuxBuildProfileImplCopyWith<$Res>
    implements $LinuxBuildProfileCopyWith<$Res> {
  factory _$$LinuxBuildProfileImplCopyWith(_$LinuxBuildProfileImpl value,
          $Res Function(_$LinuxBuildProfileImpl) then) =
      __$$LinuxBuildProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool x86_64, bool arm64});
}

/// @nodoc
class __$$LinuxBuildProfileImplCopyWithImpl<$Res>
    extends _$LinuxBuildProfileCopyWithImpl<$Res, _$LinuxBuildProfileImpl>
    implements _$$LinuxBuildProfileImplCopyWith<$Res> {
  __$$LinuxBuildProfileImplCopyWithImpl(_$LinuxBuildProfileImpl _value,
      $Res Function(_$LinuxBuildProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_$LinuxBuildProfileImpl(
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LinuxBuildProfileImpl implements _LinuxBuildProfile {
  const _$LinuxBuildProfileImpl({this.x86_64 = false, this.arm64 = false});

  factory _$LinuxBuildProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinuxBuildProfileImplFromJson(json);

  @override
  @JsonKey()
  final bool x86_64;
  @override
  @JsonKey()
  final bool arm64;

  @override
  String toString() {
    return 'LinuxBuildProfile(x86_64: $x86_64, arm64: $arm64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinuxBuildProfileImpl &&
            (identical(other.x86_64, x86_64) || other.x86_64 == x86_64) &&
            (identical(other.arm64, arm64) || other.arm64 == arm64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x86_64, arm64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinuxBuildProfileImplCopyWith<_$LinuxBuildProfileImpl> get copyWith =>
      __$$LinuxBuildProfileImplCopyWithImpl<_$LinuxBuildProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinuxBuildProfileImplToJson(
      this,
    );
  }
}

abstract class _LinuxBuildProfile implements LinuxBuildProfile {
  const factory _LinuxBuildProfile({final bool x86_64, final bool arm64}) =
      _$LinuxBuildProfileImpl;

  factory _LinuxBuildProfile.fromJson(Map<String, dynamic> json) =
      _$LinuxBuildProfileImpl.fromJson;

  @override
  bool get x86_64;
  @override
  bool get arm64;
  @override
  @JsonKey(ignore: true)
  _$$LinuxBuildProfileImplCopyWith<_$LinuxBuildProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WindowsBuildProfile _$WindowsBuildProfileFromJson(Map<String, dynamic> json) {
  return _DesktopBuildProfile.fromJson(json);
}

/// @nodoc
mixin _$WindowsBuildProfile {
  bool get x86_32 => throw _privateConstructorUsedError;
  bool get x86_64 => throw _privateConstructorUsedError;
  bool get arm64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindowsBuildProfileCopyWith<WindowsBuildProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindowsBuildProfileCopyWith<$Res> {
  factory $WindowsBuildProfileCopyWith(
          WindowsBuildProfile value, $Res Function(WindowsBuildProfile) then) =
      _$WindowsBuildProfileCopyWithImpl<$Res, WindowsBuildProfile>;
  @useResult
  $Res call({bool x86_32, bool x86_64, bool arm64});
}

/// @nodoc
class _$WindowsBuildProfileCopyWithImpl<$Res, $Val extends WindowsBuildProfile>
    implements $WindowsBuildProfileCopyWith<$Res> {
  _$WindowsBuildProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x86_32 = null,
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_value.copyWith(
      x86_32: null == x86_32
          ? _value.x86_32
          : x86_32 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesktopBuildProfileImplCopyWith<$Res>
    implements $WindowsBuildProfileCopyWith<$Res> {
  factory _$$DesktopBuildProfileImplCopyWith(_$DesktopBuildProfileImpl value,
          $Res Function(_$DesktopBuildProfileImpl) then) =
      __$$DesktopBuildProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool x86_32, bool x86_64, bool arm64});
}

/// @nodoc
class __$$DesktopBuildProfileImplCopyWithImpl<$Res>
    extends _$WindowsBuildProfileCopyWithImpl<$Res, _$DesktopBuildProfileImpl>
    implements _$$DesktopBuildProfileImplCopyWith<$Res> {
  __$$DesktopBuildProfileImplCopyWithImpl(_$DesktopBuildProfileImpl _value,
      $Res Function(_$DesktopBuildProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x86_32 = null,
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_$DesktopBuildProfileImpl(
      x86_32: null == x86_32
          ? _value.x86_32
          : x86_32 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$DesktopBuildProfileImpl implements _DesktopBuildProfile {
  const _$DesktopBuildProfileImpl(
      {this.x86_32 = false, this.x86_64 = false, this.arm64 = false});

  factory _$DesktopBuildProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesktopBuildProfileImplFromJson(json);

  @override
  @JsonKey()
  final bool x86_32;
  @override
  @JsonKey()
  final bool x86_64;
  @override
  @JsonKey()
  final bool arm64;

  @override
  String toString() {
    return 'WindowsBuildProfile(x86_32: $x86_32, x86_64: $x86_64, arm64: $arm64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesktopBuildProfileImpl &&
            (identical(other.x86_32, x86_32) || other.x86_32 == x86_32) &&
            (identical(other.x86_64, x86_64) || other.x86_64 == x86_64) &&
            (identical(other.arm64, arm64) || other.arm64 == arm64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x86_32, x86_64, arm64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesktopBuildProfileImplCopyWith<_$DesktopBuildProfileImpl> get copyWith =>
      __$$DesktopBuildProfileImplCopyWithImpl<_$DesktopBuildProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesktopBuildProfileImplToJson(
      this,
    );
  }
}

abstract class _DesktopBuildProfile implements WindowsBuildProfile {
  const factory _DesktopBuildProfile(
      {final bool x86_32,
      final bool x86_64,
      final bool arm64}) = _$DesktopBuildProfileImpl;

  factory _DesktopBuildProfile.fromJson(Map<String, dynamic> json) =
      _$DesktopBuildProfileImpl.fromJson;

  @override
  bool get x86_32;
  @override
  bool get x86_64;
  @override
  bool get arm64;
  @override
  @JsonKey(ignore: true)
  _$$DesktopBuildProfileImplCopyWith<_$DesktopBuildProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MacosBuildProfile _$MacosBuildProfileFromJson(Map<String, dynamic> json) {
  return _MacosBuildProfile.fromJson(json);
}

/// @nodoc
mixin _$MacosBuildProfile {
  bool get universal => throw _privateConstructorUsedError;
  bool get x86_64 => throw _privateConstructorUsedError;
  bool get arm64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MacosBuildProfileCopyWith<MacosBuildProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacosBuildProfileCopyWith<$Res> {
  factory $MacosBuildProfileCopyWith(
          MacosBuildProfile value, $Res Function(MacosBuildProfile) then) =
      _$MacosBuildProfileCopyWithImpl<$Res, MacosBuildProfile>;
  @useResult
  $Res call({bool universal, bool x86_64, bool arm64});
}

/// @nodoc
class _$MacosBuildProfileCopyWithImpl<$Res, $Val extends MacosBuildProfile>
    implements $MacosBuildProfileCopyWith<$Res> {
  _$MacosBuildProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universal = null,
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_value.copyWith(
      universal: null == universal
          ? _value.universal
          : universal // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MacosBuildProfileImplCopyWith<$Res>
    implements $MacosBuildProfileCopyWith<$Res> {
  factory _$$MacosBuildProfileImplCopyWith(_$MacosBuildProfileImpl value,
          $Res Function(_$MacosBuildProfileImpl) then) =
      __$$MacosBuildProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool universal, bool x86_64, bool arm64});
}

/// @nodoc
class __$$MacosBuildProfileImplCopyWithImpl<$Res>
    extends _$MacosBuildProfileCopyWithImpl<$Res, _$MacosBuildProfileImpl>
    implements _$$MacosBuildProfileImplCopyWith<$Res> {
  __$$MacosBuildProfileImplCopyWithImpl(_$MacosBuildProfileImpl _value,
      $Res Function(_$MacosBuildProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? universal = null,
    Object? x86_64 = null,
    Object? arm64 = null,
  }) {
    return _then(_$MacosBuildProfileImpl(
      universal: null == universal
          ? _value.universal
          : universal // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MacosBuildProfileImpl implements _MacosBuildProfile {
  const _$MacosBuildProfileImpl(
      {this.universal = false, this.x86_64 = false, this.arm64 = false});

  factory _$MacosBuildProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacosBuildProfileImplFromJson(json);

  @override
  @JsonKey()
  final bool universal;
  @override
  @JsonKey()
  final bool x86_64;
  @override
  @JsonKey()
  final bool arm64;

  @override
  String toString() {
    return 'MacosBuildProfile(universal: $universal, x86_64: $x86_64, arm64: $arm64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacosBuildProfileImpl &&
            (identical(other.universal, universal) ||
                other.universal == universal) &&
            (identical(other.x86_64, x86_64) || other.x86_64 == x86_64) &&
            (identical(other.arm64, arm64) || other.arm64 == arm64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, universal, x86_64, arm64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MacosBuildProfileImplCopyWith<_$MacosBuildProfileImpl> get copyWith =>
      __$$MacosBuildProfileImplCopyWithImpl<_$MacosBuildProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacosBuildProfileImplToJson(
      this,
    );
  }
}

abstract class _MacosBuildProfile implements MacosBuildProfile {
  const factory _MacosBuildProfile(
      {final bool universal,
      final bool x86_64,
      final bool arm64}) = _$MacosBuildProfileImpl;

  factory _MacosBuildProfile.fromJson(Map<String, dynamic> json) =
      _$MacosBuildProfileImpl.fromJson;

  @override
  bool get universal;
  @override
  bool get x86_64;
  @override
  bool get arm64;
  @override
  @JsonKey(ignore: true)
  _$$MacosBuildProfileImplCopyWith<_$MacosBuildProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IosBuildProfile _$IosBuildProfileFromJson(Map<String, dynamic> json) {
  return _WindowsBuildProfile.fromJson(json);
}

/// @nodoc
mixin _$IosBuildProfile {
  bool get buildIosSimulator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IosBuildProfileCopyWith<IosBuildProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IosBuildProfileCopyWith<$Res> {
  factory $IosBuildProfileCopyWith(
          IosBuildProfile value, $Res Function(IosBuildProfile) then) =
      _$IosBuildProfileCopyWithImpl<$Res, IosBuildProfile>;
  @useResult
  $Res call({bool buildIosSimulator});
}

/// @nodoc
class _$IosBuildProfileCopyWithImpl<$Res, $Val extends IosBuildProfile>
    implements $IosBuildProfileCopyWith<$Res> {
  _$IosBuildProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildIosSimulator = null,
  }) {
    return _then(_value.copyWith(
      buildIosSimulator: null == buildIosSimulator
          ? _value.buildIosSimulator
          : buildIosSimulator // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindowsBuildProfileImplCopyWith<$Res>
    implements $IosBuildProfileCopyWith<$Res> {
  factory _$$WindowsBuildProfileImplCopyWith(_$WindowsBuildProfileImpl value,
          $Res Function(_$WindowsBuildProfileImpl) then) =
      __$$WindowsBuildProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool buildIosSimulator});
}

/// @nodoc
class __$$WindowsBuildProfileImplCopyWithImpl<$Res>
    extends _$IosBuildProfileCopyWithImpl<$Res, _$WindowsBuildProfileImpl>
    implements _$$WindowsBuildProfileImplCopyWith<$Res> {
  __$$WindowsBuildProfileImplCopyWithImpl(_$WindowsBuildProfileImpl _value,
      $Res Function(_$WindowsBuildProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildIosSimulator = null,
  }) {
    return _then(_$WindowsBuildProfileImpl(
      buildIosSimulator: null == buildIosSimulator
          ? _value.buildIosSimulator
          : buildIosSimulator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WindowsBuildProfileImpl implements _WindowsBuildProfile {
  const _$WindowsBuildProfileImpl({this.buildIosSimulator = true});

  factory _$WindowsBuildProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindowsBuildProfileImplFromJson(json);

  @override
  @JsonKey()
  final bool buildIosSimulator;

  @override
  String toString() {
    return 'IosBuildProfile(buildIosSimulator: $buildIosSimulator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindowsBuildProfileImpl &&
            (identical(other.buildIosSimulator, buildIosSimulator) ||
                other.buildIosSimulator == buildIosSimulator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buildIosSimulator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WindowsBuildProfileImplCopyWith<_$WindowsBuildProfileImpl> get copyWith =>
      __$$WindowsBuildProfileImplCopyWithImpl<_$WindowsBuildProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindowsBuildProfileImplToJson(
      this,
    );
  }
}

abstract class _WindowsBuildProfile implements IosBuildProfile {
  const factory _WindowsBuildProfile({final bool buildIosSimulator}) =
      _$WindowsBuildProfileImpl;

  factory _WindowsBuildProfile.fromJson(Map<String, dynamic> json) =
      _$WindowsBuildProfileImpl.fromJson;

  @override
  bool get buildIosSimulator;
  @override
  @JsonKey(ignore: true)
  _$$WindowsBuildProfileImplCopyWith<_$WindowsBuildProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AndroidBuildProfile _$AndroidBuildProfileFromJson(Map<String, dynamic> json) {
  return _AndroidBuildProfile.fromJson(json);
}

/// @nodoc
mixin _$AndroidBuildProfile {
  bool get arm => throw _privateConstructorUsedError;
  bool get arm64 => throw _privateConstructorUsedError;
  bool get x86 => throw _privateConstructorUsedError;
  bool get x86_64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AndroidBuildProfileCopyWith<AndroidBuildProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AndroidBuildProfileCopyWith<$Res> {
  factory $AndroidBuildProfileCopyWith(
          AndroidBuildProfile value, $Res Function(AndroidBuildProfile) then) =
      _$AndroidBuildProfileCopyWithImpl<$Res, AndroidBuildProfile>;
  @useResult
  $Res call({bool arm, bool arm64, bool x86, bool x86_64});
}

/// @nodoc
class _$AndroidBuildProfileCopyWithImpl<$Res, $Val extends AndroidBuildProfile>
    implements $AndroidBuildProfileCopyWith<$Res> {
  _$AndroidBuildProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arm = null,
    Object? arm64 = null,
    Object? x86 = null,
    Object? x86_64 = null,
  }) {
    return _then(_value.copyWith(
      arm: null == arm
          ? _value.arm
          : arm // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86: null == x86
          ? _value.x86
          : x86 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AndroidBuildProfileImplCopyWith<$Res>
    implements $AndroidBuildProfileCopyWith<$Res> {
  factory _$$AndroidBuildProfileImplCopyWith(_$AndroidBuildProfileImpl value,
          $Res Function(_$AndroidBuildProfileImpl) then) =
      __$$AndroidBuildProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool arm, bool arm64, bool x86, bool x86_64});
}

/// @nodoc
class __$$AndroidBuildProfileImplCopyWithImpl<$Res>
    extends _$AndroidBuildProfileCopyWithImpl<$Res, _$AndroidBuildProfileImpl>
    implements _$$AndroidBuildProfileImplCopyWith<$Res> {
  __$$AndroidBuildProfileImplCopyWithImpl(_$AndroidBuildProfileImpl _value,
      $Res Function(_$AndroidBuildProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arm = null,
    Object? arm64 = null,
    Object? x86 = null,
    Object? x86_64 = null,
  }) {
    return _then(_$AndroidBuildProfileImpl(
      arm: null == arm
          ? _value.arm
          : arm // ignore: cast_nullable_to_non_nullable
              as bool,
      arm64: null == arm64
          ? _value.arm64
          : arm64 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86: null == x86
          ? _value.x86
          : x86 // ignore: cast_nullable_to_non_nullable
              as bool,
      x86_64: null == x86_64
          ? _value.x86_64
          : x86_64 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AndroidBuildProfileImpl implements _AndroidBuildProfile {
  const _$AndroidBuildProfileImpl(
      {this.arm = false,
      this.arm64 = false,
      this.x86 = false,
      this.x86_64 = false});

  factory _$AndroidBuildProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndroidBuildProfileImplFromJson(json);

  @override
  @JsonKey()
  final bool arm;
  @override
  @JsonKey()
  final bool arm64;
  @override
  @JsonKey()
  final bool x86;
  @override
  @JsonKey()
  final bool x86_64;

  @override
  String toString() {
    return 'AndroidBuildProfile(arm: $arm, arm64: $arm64, x86: $x86, x86_64: $x86_64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndroidBuildProfileImpl &&
            (identical(other.arm, arm) || other.arm == arm) &&
            (identical(other.arm64, arm64) || other.arm64 == arm64) &&
            (identical(other.x86, x86) || other.x86 == x86) &&
            (identical(other.x86_64, x86_64) || other.x86_64 == x86_64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arm, arm64, x86, x86_64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndroidBuildProfileImplCopyWith<_$AndroidBuildProfileImpl> get copyWith =>
      __$$AndroidBuildProfileImplCopyWithImpl<_$AndroidBuildProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AndroidBuildProfileImplToJson(
      this,
    );
  }
}

abstract class _AndroidBuildProfile implements AndroidBuildProfile {
  const factory _AndroidBuildProfile(
      {final bool arm,
      final bool arm64,
      final bool x86,
      final bool x86_64}) = _$AndroidBuildProfileImpl;

  factory _AndroidBuildProfile.fromJson(Map<String, dynamic> json) =
      _$AndroidBuildProfileImpl.fromJson;

  @override
  bool get arm;
  @override
  bool get arm64;
  @override
  bool get x86;
  @override
  bool get x86_64;
  @override
  @JsonKey(ignore: true)
  _$$AndroidBuildProfileImplCopyWith<_$AndroidBuildProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Target _$TargetFromJson(Map<String, dynamic> json) {
  return _Target.fromJson(json);
}

/// @nodoc
mixin _$Target {
  Map<BuildPlatform, PlatformTarget> get platforms =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetCopyWith<Target> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetCopyWith<$Res> {
  factory $TargetCopyWith(Target value, $Res Function(Target) then) =
      _$TargetCopyWithImpl<$Res, Target>;
  @useResult
  $Res call({Map<BuildPlatform, PlatformTarget> platforms});
}

/// @nodoc
class _$TargetCopyWithImpl<$Res, $Val extends Target>
    implements $TargetCopyWith<$Res> {
  _$TargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platforms = null,
  }) {
    return _then(_value.copyWith(
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<BuildPlatform, PlatformTarget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TargetImplCopyWith<$Res> implements $TargetCopyWith<$Res> {
  factory _$$TargetImplCopyWith(
          _$TargetImpl value, $Res Function(_$TargetImpl) then) =
      __$$TargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<BuildPlatform, PlatformTarget> platforms});
}

/// @nodoc
class __$$TargetImplCopyWithImpl<$Res>
    extends _$TargetCopyWithImpl<$Res, _$TargetImpl>
    implements _$$TargetImplCopyWith<$Res> {
  __$$TargetImplCopyWithImpl(
      _$TargetImpl _value, $Res Function(_$TargetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platforms = null,
  }) {
    return _then(_$TargetImpl(
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Map<BuildPlatform, PlatformTarget>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TargetImpl implements _Target {
  const _$TargetImpl(
      {required final Map<BuildPlatform, PlatformTarget> platforms})
      : _platforms = platforms;

  factory _$TargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TargetImplFromJson(json);

  final Map<BuildPlatform, PlatformTarget> _platforms;
  @override
  Map<BuildPlatform, PlatformTarget> get platforms {
    if (_platforms is EqualUnmodifiableMapView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_platforms);
  }

  @override
  String toString() {
    return 'Target(platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetImpl &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      __$$TargetImplCopyWithImpl<_$TargetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TargetImplToJson(
      this,
    );
  }
}

abstract class _Target implements Target {
  const factory _Target(
          {required final Map<BuildPlatform, PlatformTarget> platforms}) =
      _$TargetImpl;

  factory _Target.fromJson(Map<String, dynamic> json) = _$TargetImpl.fromJson;

  @override
  Map<BuildPlatform, PlatformTarget> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$TargetImplCopyWith<_$TargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlatformTarget _$PlatformTargetFromJson(Map<String, dynamic> json) {
  return _PlatformTarget.fromJson(json);
}

/// @nodoc
mixin _$PlatformTarget {
  String get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformTargetCopyWith<PlatformTarget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformTargetCopyWith<$Res> {
  factory $PlatformTargetCopyWith(
          PlatformTarget value, $Res Function(PlatformTarget) then) =
      _$PlatformTargetCopyWithImpl<$Res, PlatformTarget>;
  @useResult
  $Res call({String target});
}

/// @nodoc
class _$PlatformTargetCopyWithImpl<$Res, $Val extends PlatformTarget>
    implements $PlatformTargetCopyWith<$Res> {
  _$PlatformTargetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
  }) {
    return _then(_value.copyWith(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformTargetImplCopyWith<$Res>
    implements $PlatformTargetCopyWith<$Res> {
  factory _$$PlatformTargetImplCopyWith(_$PlatformTargetImpl value,
          $Res Function(_$PlatformTargetImpl) then) =
      __$$PlatformTargetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String target});
}

/// @nodoc
class __$$PlatformTargetImplCopyWithImpl<$Res>
    extends _$PlatformTargetCopyWithImpl<$Res, _$PlatformTargetImpl>
    implements _$$PlatformTargetImplCopyWith<$Res> {
  __$$PlatformTargetImplCopyWithImpl(
      _$PlatformTargetImpl _value, $Res Function(_$PlatformTargetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
  }) {
    return _then(_$PlatformTargetImpl(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PlatformTargetImpl implements _PlatformTarget {
  const _$PlatformTargetImpl({required this.target});

  factory _$PlatformTargetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformTargetImplFromJson(json);

  @override
  final String target;

  @override
  String toString() {
    return 'PlatformTarget(target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformTargetImpl &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, target);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformTargetImplCopyWith<_$PlatformTargetImpl> get copyWith =>
      __$$PlatformTargetImplCopyWithImpl<_$PlatformTargetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformTargetImplToJson(
      this,
    );
  }
}

abstract class _PlatformTarget implements PlatformTarget {
  const factory _PlatformTarget({required final String target}) =
      _$PlatformTargetImpl;

  factory _PlatformTarget.fromJson(Map<String, dynamic> json) =
      _$PlatformTargetImpl.fromJson;

  @override
  String get target;
  @override
  @JsonKey(ignore: true)
  _$$PlatformTargetImplCopyWith<_$PlatformTargetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
