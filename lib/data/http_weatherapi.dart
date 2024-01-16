import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather1/model/current.dart';
import 'package:weather1/model/json_api.dart';
import 'dart:convert' show jsonEncode;
import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:http_parser/http_parser.dart' show MediaType;
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import '../json_weatherapi_forecast/json_forecast.dart';
import '../logger.dart';
// import 'package:retrofit_example/api_result.dart';

// part 'http_weatherapi.g.dart';

class HttpWeatherApi {

  static String baseUrl = 'https://api.weatherapi.com/v1';
  static String key = '787aa804050b4da7b70132421241101';
  static String reg = '51.660781,39.200296';

  String url ='$baseUrl/current.json?key=$key&q=$reg&aqi=no&lang=ru';
  String url2 = '$baseUrl/astronomy.json?key=$key&q=$reg&lang=ru';
  String url3 = '$baseUrl/history.json?key=$key&q=$reg&dt=${DateFormat('yyyy-MM-dd').format(DateTime.now())}&lang=ru';
  String url4 = '$baseUrl/forecast.json?key=$key&q=$reg&days=2&lang=ru';

  final dio = Dio();//..interceptors.add(PrettyDioLogger());
  Future<Map<String,String>> getTemp2() async {
    var response = await dio.get(url2);
    Map<String,String> result = {
      'sunrise': (response.data['astronomy']['astro']['sunrise']!=null
          ? '${response.data['astronomy']['astro']['sunrise']}'
          : '0'),
      'sunset': (response.data['astronomy']['astro']['sunset']!=null
          ? '${response.data['astronomy']['astro']['sunset']}'
          : '0'),
    };
    return result;
  }
  Future<Map<String,String>> getTemp3() async {
    var response2 = await dio.get(url3);
    Map<String,String> result = {
      'temp_min': (response2.data['forecast']['forecastday'][0]['day']['mintemp_c']!=null
          ? '${response2.data['forecast']['forecastday'][0]['day']['mintemp_c']}'
          : '0'),
      'temp_max': (response2.data['forecast']['forecastday'][0]['day']['maxtemp_c']!=null
          ? '${response2.data['forecast']['forecastday'][0]['day']['maxtemp_c']+2}'
          : '0'),
    };
    return result;
  }
  Future<Map<String,String>> getTemp() async {
    var response = await dio.get(url);
    var response2 = await dio.get(url3);
    Map<String,String> result = {
      'temp_min': (response2.data['forecast']['forecastday'][0]['day']['mintemp_c']!=null
          ? '${response2.data['forecast']['forecastday'][0]['day']['mintemp_c'].round()}'
          : '0'),
      'temp_max': (response2.data['forecast']['forecastday'][0]['day']['maxtemp_c']!=null
          ? '${response2.data['forecast']['forecastday'][0]['day']['maxtemp_c'].round()}'
          : '0'),

      'temp': (response.data['current']['temp_c']!=null
              ? '${response.data['current']['temp_c'].round()}'
              : '0'),
      'feels_like': (response.data['current']['feelslike_c']!=null
              ? '${response.data['current']['feelslike_c']}'
              : '0'),
      'pressure_mb': (response.data['current']['pressure_mb']!=null
              ? '${response.data['current']['pressure_mb'].round()}'
              : '0'),
      'pressure_in': (response.data['current']['pressure_in']!=null
              ? '${response.data['current']['pressure_in'].round()}'
              : '0'),
      'description': (response.data['current']['condition']['text']!=null
              ? '${response.data['current']['condition']['text']}'
              : '0'),
      'icon': (response.data['current']['condition']['icon']!=null
          ? '${response.data['current']['condition']['icon']}'
          : '0'),
      'clouds': (response.data['current']['cloud']!=null
              ? '${response.data['current']['cloud']}'
              : '0'),
      'wind': (response.data['current']['wind_kph']!=null
              ? '${response.data['current']['wind_kph'].round()}'
              : '0'),
      'rain': (response.data['rain']!=null
              ? '${response.data['rain']['1h']}'
              : '0'),
      'snow': (response.data['snow']!=null
              ? '${response.data['snow']['1h']}'
              : '0'),
      'name': (response.data['location']['region']!=null
              ? '${response.data['location']['region']}'
              : '0'),
      'country': (response.data['location']['country']!=null
              ? '${response.data['location']['country']}'
              : '0'),
    };
    return result;
  }




  Future<Map<String,String>> getTemp4(int time) async {
    var response = await dio.get(url4);
    Map<String,String> result = {};
        for (int j = 0; j <=23;j++){
          if ('$time' == '${response.data['forecast']['forecastday'][0]['hour'][j]['time_epoch']}') {
            int k = j;
            for (int i = 0; i < 7; i++, k++) {
          result['c$i'] = '${response.data['forecast']['forecastday'][0]['hour'][k]['temp_c']}';
          result['i$i'] = '${response.data['forecast']['forecastday'][0]['hour'][k]['condition']['icon']}';
            }
            break;
          }
      }
    return result;
  }
  Future<JsonForecast> getData2() async {
    var response = await dio.get(url4);
    try {
      JsonForecast result = JsonForecast.fromJson(response.data);

      return result;
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    }
    // for (int j = 0; j <=23;j++){
    //   if ('$time' == '${response.data['forecast']['forecastday'][0]['hour'][j]['time_epoch']}') {
    //     int k = j;
    //     for (int i = 0; i < 7; i++, k++) {
    //       result['c$i'] = '${response.data['forecast']['forecastday'][0]['hour'][k]['temp_c']}';
    //       result['i$i'] = '${response.data['forecast']['forecastday'][0]['hour'][k]['condition']['icon']}';
    //     }
    //     break;
    //   }
    // }
  }





   Future<JsonApi> getData() async {
     // try {
      var response = await dio.get(url);
      JsonApi weather = JsonApi.fromJson(response.data as Map<String, dynamic>);
      return weather;
    // } catch(e){
    //    debugPrint(e.toString());
    //  }
    //  return JsonApi(current: Current(tempC: 1));
  }
  // Future<Map<String,String>> getTemp() async {
  //   return Future.delayed(const Duration(seconds: 2), () =>{
  //     'temp': '11',
  //     'feels_like': '11',
  //     'temp_min': '11',
  //     'temp_max': '11',
  //     'clouds': '18',
  //     'wind': '12',
  //     'name': 'error',
  //   }
  //   );
  // }
}