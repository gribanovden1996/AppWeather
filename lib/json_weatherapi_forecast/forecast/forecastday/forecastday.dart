import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'astro/astro.dart';
import 'hour/hour.dart';
import 'day/day.dart';

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
    required Astro astro,
    required Day day,
    required String date,
  }) = _Forecastday;

  factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);
}