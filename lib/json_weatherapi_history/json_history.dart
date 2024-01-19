import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast/history_forecast.dart';

part 'json_history.freezed.dart';
part 'json_history.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class JsonHistory with _$JsonHistory {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory JsonHistory({
    required Forecast forecast,
  }) = _JsonForecast;

  factory JsonHistory.fromJson(Map<String, dynamic> json) => _$JsonHistoryFromJson(json);
}