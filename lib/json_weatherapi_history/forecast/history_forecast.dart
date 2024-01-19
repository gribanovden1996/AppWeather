import 'package:freezed_annotation/freezed_annotation.dart';
import 'forecastday/history_forecastday.dart';

part 'history_forecast.freezed.dart';
part 'history_forecast.g.dart';

@Freezed(
  toJson: true,
  fromJson: true,
)
abstract class Forecast with _$Forecast {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  factory Forecast({
    required List<Forecastday> forecastday,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}