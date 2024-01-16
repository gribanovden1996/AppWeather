// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonForecast _$JsonForecastFromJson(Map<String, dynamic> json) {
  return _JsonForecast.fromJson(json);
}

/// @nodoc
mixin _$JsonForecast {
  Forecast get forecast => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  Current get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonForecastCopyWith<JsonForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonForecastCopyWith<$Res> {
  factory $JsonForecastCopyWith(
          JsonForecast value, $Res Function(JsonForecast) then) =
      _$JsonForecastCopyWithImpl<$Res, JsonForecast>;
  @useResult
  $Res call({Forecast forecast, Location location, Current current});

  $ForecastCopyWith<$Res> get forecast;
  $LocationCopyWith<$Res> get location;
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class _$JsonForecastCopyWithImpl<$Res, $Val extends JsonForecast>
    implements $JsonForecastCopyWith<$Res> {
  _$JsonForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonForecastImplCopyWith<$Res>
    implements $JsonForecastCopyWith<$Res> {
  factory _$$JsonForecastImplCopyWith(
          _$JsonForecastImpl value, $Res Function(_$JsonForecastImpl) then) =
      __$$JsonForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Forecast forecast, Location location, Current current});

  @override
  $ForecastCopyWith<$Res> get forecast;
  @override
  $LocationCopyWith<$Res> get location;
  @override
  $CurrentCopyWith<$Res> get current;
}

/// @nodoc
class __$$JsonForecastImplCopyWithImpl<$Res>
    extends _$JsonForecastCopyWithImpl<$Res, _$JsonForecastImpl>
    implements _$$JsonForecastImplCopyWith<$Res> {
  __$$JsonForecastImplCopyWithImpl(
      _$JsonForecastImpl _value, $Res Function(_$JsonForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$JsonForecastImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$JsonForecastImpl with DiagnosticableTreeMixin implements _JsonForecast {
  _$JsonForecastImpl(
      {required this.forecast, required this.location, required this.current});

  factory _$JsonForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonForecastImplFromJson(json);

  @override
  final Forecast forecast;
  @override
  final Location location;
  @override
  final Current current;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonForecast(forecast: $forecast, location: $location, current: $current)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonForecast'))
      ..add(DiagnosticsProperty('forecast', forecast))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('current', current));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonForecastImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, forecast, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonForecastImplCopyWith<_$JsonForecastImpl> get copyWith =>
      __$$JsonForecastImplCopyWithImpl<_$JsonForecastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonForecastImplToJson(
      this,
    );
  }
}

abstract class _JsonForecast implements JsonForecast {
  factory _JsonForecast(
      {required final Forecast forecast,
      required final Location location,
      required final Current current}) = _$JsonForecastImpl;

  factory _JsonForecast.fromJson(Map<String, dynamic> json) =
      _$JsonForecastImpl.fromJson;

  @override
  Forecast get forecast;
  @override
  Location get location;
  @override
  Current get current;
  @override
  @JsonKey(ignore: true)
  _$$JsonForecastImplCopyWith<_$JsonForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
