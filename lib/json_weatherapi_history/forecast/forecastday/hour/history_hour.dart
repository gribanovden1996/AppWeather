import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'history_hour.freezed.dart';
part 'history_hour.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Hour with _$Hour {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Hour({
    required int timeEpoch,
    required double tempC,
    required double chanceOfRain,
    required double chanceOfSnow,
    required double uv,
    required double windKph,
    required double pressureMb,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}