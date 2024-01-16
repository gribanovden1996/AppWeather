// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astro.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Astro _$AstroFromJson(Map<String, dynamic> json) {
  return _Astro.fromJson(json);
}

/// @nodoc
mixin _$Astro {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AstroCopyWith<Astro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroCopyWith<$Res> {
  factory $AstroCopyWith(Astro value, $Res Function(Astro) then) =
      _$AstroCopyWithImpl<$Res, Astro>;
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class _$AstroCopyWithImpl<$Res, $Val extends Astro>
    implements $AstroCopyWith<$Res> {
  _$AstroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroImplCopyWith<$Res> implements $AstroCopyWith<$Res> {
  factory _$$AstroImplCopyWith(
          _$AstroImpl value, $Res Function(_$AstroImpl) then) =
      __$$AstroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sunrise, String sunset});
}

/// @nodoc
class __$$AstroImplCopyWithImpl<$Res>
    extends _$AstroCopyWithImpl<$Res, _$AstroImpl>
    implements _$$AstroImplCopyWith<$Res> {
  __$$AstroImplCopyWithImpl(
      _$AstroImpl _value, $Res Function(_$AstroImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_$AstroImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$AstroImpl with DiagnosticableTreeMixin implements _Astro {
  _$AstroImpl({required this.sunrise, required this.sunset});

  factory _$AstroImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstroImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Astro(sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Astro'))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sunrise, sunset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      __$$AstroImplCopyWithImpl<_$AstroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroImplToJson(
      this,
    );
  }
}

abstract class _Astro implements Astro {
  factory _Astro(
      {required final String sunrise,
      required final String sunset}) = _$AstroImpl;

  factory _Astro.fromJson(Map<String, dynamic> json) = _$AstroImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  @JsonKey(ignore: true)
  _$$AstroImplCopyWith<_$AstroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
