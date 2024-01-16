import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecastday.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Forecast with _$Forecast {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Forecast({
    required List<Forecastday> forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}