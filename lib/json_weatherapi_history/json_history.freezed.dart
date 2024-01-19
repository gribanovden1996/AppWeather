// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JsonHistory _$JsonHistoryFromJson(Map<String, dynamic> json) {
  return _JsonForecast.fromJson(json);
}

/// @nodoc
mixin _$JsonHistory {
  Forecast get forecast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JsonHistoryCopyWith<JsonHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonHistoryCopyWith<$Res> {
  factory $JsonHistoryCopyWith(
          JsonHistory value, $Res Function(JsonHistory) then) =
      _$JsonHistoryCopyWithImpl<$Res, JsonHistory>;
  @useResult
  $Res call({Forecast forecast});

  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class _$JsonHistoryCopyWithImpl<$Res, $Val extends JsonHistory>
    implements $JsonHistoryCopyWith<$Res> {
  _$JsonHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_value.copyWith(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_value.forecast, (value) {
      return _then(_value.copyWith(forecast: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JsonForecastImplCopyWith<$Res>
    implements $JsonHistoryCopyWith<$Res> {
  factory _$$JsonForecastImplCopyWith(
          _$JsonForecastImpl value, $Res Function(_$JsonForecastImpl) then) =
      __$$JsonForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Forecast forecast});

  @override
  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class __$$JsonForecastImplCopyWithImpl<$Res>
    extends _$JsonHistoryCopyWithImpl<$Res, _$JsonForecastImpl>
    implements _$$JsonForecastImplCopyWith<$Res> {
  __$$JsonForecastImplCopyWithImpl(
      _$JsonForecastImpl _value, $Res Function(_$JsonForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecast = null,
  }) {
    return _then(_$JsonForecastImpl(
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: true)
class _$JsonForecastImpl with DiagnosticableTreeMixin implements _JsonForecast {
  _$JsonForecastImpl({required this.forecast});

  factory _$JsonForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonForecastImplFromJson(json);

  @override
  final Forecast forecast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JsonHistory(forecast: $forecast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JsonHistory'))
      ..add(DiagnosticsProperty('forecast', forecast));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonForecastImpl &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, forecast);

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

abstract class _JsonForecast implements JsonHistory {
  factory _JsonForecast({required final Forecast forecast}) =
      _$JsonForecastImpl;

  factory _JsonForecast.fromJson(Map<String, dynamic> json) =
      _$JsonForecastImpl.fromJson;

  @override
  Forecast get forecast;
  @override
  @JsonKey(ignore: true)
  _$$JsonForecastImplCopyWith<_$JsonForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
