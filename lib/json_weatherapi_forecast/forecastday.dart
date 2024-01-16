import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'hour.dart';

part 'forecastday.freezed.dart';
part 'forecastday.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Forecastday with _$Forecastday {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Forecastday({
    required List<Hour> hour,
  }) = _Forecastday;

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);
}