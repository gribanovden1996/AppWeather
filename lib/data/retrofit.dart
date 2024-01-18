import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:retrofit/retrofit.dart';

import '../json_weatherapi_forecast/json_forecast.dart';
part 'retrofit.g.dart';

@RestApi(baseUrl: 'https://api.weatherapi.com/v1')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  static const String key = '787aa804050b4da7b70132421241101';
  static const String reg = '51.660781,39.200296';

  @GET('/forecast.json?key=$key&q=$reg&days=10&lang=ru')
  Future<JsonForecast> getData();

}