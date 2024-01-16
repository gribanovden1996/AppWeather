import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/current.dart';
import 'forecast/forecast.dart';
import 'location/location.dart';

part 'json_forecast.freezed.dart';
part 'json_forecast.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class JsonForecast with _$JsonForecast {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory JsonForecast({
    required Forecast forecast,
    required Location location,
    required Current current,
  }) = _JsonForecast;

  factory JsonForecast.fromJson(Map<String, dynamic> json) => _$JsonForecastFromJson(json);
}