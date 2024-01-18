import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'day_condition.freezed.dart';
part 'day_condition.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class DayCondition with _$DayCondition {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory DayCondition({
    required String text,
    required String icon,
  }) = _DayCondition;

  factory DayCondition.fromJson(Map<String, dynamic> json) => _$DayConditionFromJson(json);
}