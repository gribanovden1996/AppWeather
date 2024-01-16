import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hour_condition.freezed.dart';
part 'hour_condition.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Condition with _$Condition {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Condition({
    required String icon,
    required String text,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);
}