import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:dio/dio.dart' hide Headers;
import '../json_weatherapi_forecast/json_forecast.dart';
import '../logger.dart';

class HttpWeatherApi {
  static String baseUrl = 'https://api.weatherapi.com/v1';
  static String key = '787aa804050b4da7b70132421241101';
  static String reg = '51.660781,39.200296';

  final String url  = '$baseUrl/current.json?key=$key&q=$reg&aqi=no&lang=ru';
  final String url2 = '$baseUrl/astronomy.json?key=$key&q=$reg&lang=ru';
  final String url3 = '$baseUrl/history.json?key=$key&q=$reg&dt=${DateFormat('yyyy-MM-dd').format(DateTime.now())}&lang=ru';
  final String url4 = '$baseUrl/forecast.json?key=$key&q=$reg&days=7&lang=ru';

  final dio = Dio();//..interceptors.add(PrettyDioLogger());

  Future<JsonForecast> getData() async {
    var response = await dio.get(url4);
    try {
      JsonForecast result = JsonForecast.fromJson(response.data);
      return result;
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    }
  }
}