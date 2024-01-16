import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'current_condition.freezed.dart';
part 'current_condition.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class CurrentCondition with _$CurrentCondition {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory CurrentCondition({
    required String text,
    required String icon,
  }) = _CurrentCondition;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) => _$CurrentConditionFromJson(json);
}