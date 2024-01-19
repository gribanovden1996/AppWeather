// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_forecastday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) {
  return _Forecastday.fromJson(json);
}

/// @nodoc
mixin _$Forecastday {
  List<Hour> get hour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastdayCopyWith<Forecastday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastdayCopyWith<$Res> {
  factory $ForecastdayCopyWith(
          Forecastday value, $Res Function(Forecastday) then) =
      _$ForecastdayCopyWithImpl<$Res, Forecastday>;
  @useResult
  $Res call({List<Hour> hour});
}

/// @nodoc
class _$ForecastdayCopyWithImpl<$Res, $Val extends Forecastday>
    implements $ForecastdayCopyWith<$Res> {
  _$ForecastdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastdayImplCopyWith<$Res>
    implements $ForecastdayCopyWith<$Res> {
  factory _$$ForecastdayImplCopyWith(
          _$ForecastdayImpl value, $Res Function(_$ForecastdayImpl) then) =
      __$$ForecastdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Hour> hour});
}

/// @nodoc
class __$$ForecastdayImplCopyWithImpl<$Res>
    extends _$ForecastdayCopyWithImpl<$Res, _$ForecastdayImpl>
    implements _$$ForecastdayImplCopyWith<$Res> {
  __$$ForecastdayImplCopyWithImpl(
      _$ForecastdayImpl _value, $Res Function(_$ForecastdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
  }) {
    return _then(_$ForecastdayImpl(
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<Hour>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$ForecastdayImpl implements _Forecastday {
  _$ForecastdayImpl({required final List<Hour> hour}) : _hour = hour;

  factory _$ForecastdayImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastdayImplFromJson(json);

  final List<Hour> _hour;
  @override
  List<Hour> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'Forecastday(hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastdayImpl &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hour));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastdayImplCopyWith<_$ForecastdayImpl> get copyWith =>
      __$$ForecastdayImplCopyWithImpl<_$ForecastdayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastdayImplToJson(
      this,
    );
  }
}

abstract class _Forecastday implements Forecastday {
  factory _Forecastday({required final List<Hour> hour}) = _$ForecastdayImpl;

  factory _Forecastday.fromJson(Map<String, dynamic> json) =
      _$ForecastdayImpl.fromJson;

  @override
  List<Hour> get hour;
  @override
  @JsonKey(ignore: true)
  _$$ForecastdayImplCopyWith<_$ForecastdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
