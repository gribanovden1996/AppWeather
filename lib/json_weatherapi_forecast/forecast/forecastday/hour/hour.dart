import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'hour_condition/hour_condition.dart';


part 'hour.freezed.dart';
part 'hour.g.dart';

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
    required Condition condition,
    required double uv,
  }) = _Hour;

  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}