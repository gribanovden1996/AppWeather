import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../json_weatherapi_forecast/json_forecast.dart';
import '../json_weatherapi_history/json_history.dart';
part 'retrofit.g.dart';

@RestApi(baseUrl: 'https://api.weatherapi.com/v1')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET('/forecast.json')
  Future<JsonForecast> getData2(
      @Query('key') String apiKey,
      @Query('days') int days,
      @Query('lang') String language,
      @Query('q') String pos);

  @GET('/history.json')
  Future<JsonHistory> getData3(
      @Query('key') String apiKey,
      @Query('q') String pos,
      @Query('lang') String language,
      @Query('dt') String day);
}