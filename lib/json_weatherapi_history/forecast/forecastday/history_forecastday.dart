import 'package:freezed_annotation/freezed_annotation.dart';

import 'hour/history_hour.dart';

part 'history_forecastday.freezed.dart';
part 'history_forecastday.g.dart';

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