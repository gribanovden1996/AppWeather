import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../forecast/forecastday/hour/hour_condition/hour_condition.dart';


part 'current.freezed.dart';
part 'current.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Current with _$Current {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Current({
    required double tempC,
    required Condition condition,
    required double windKph,
    required double pressureMb,
    required double pressureIn,
    required double feelslikeC,
    required double uv,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}