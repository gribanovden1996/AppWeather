import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class Http_openweathermap {
  final dio = Dio();
  Future<Map<String,String>> getTemp2() async {
    var response = await dio.get(
        'https://api.openweathermap.org/data/2.5/forecast?lat=44.34&lon=10.99&appid=42d6e7cd6fb97dd76001814d4d217be6');
    DateTime time1 = DateTime.fromMillisecondsSinceEpoch((response.data['city']['sunrise']) * 1000, isUtc: true);
    DateTime time2 = DateTime.fromMillisecondsSinceEpoch((response.data['city']['sunset']) * 1000, isUtc: true);
    Map<String,String> result = {
      'sunrise': DateFormat('HH:mm').format(time1),
      'sunset': DateFormat('HH:mm').format(time2),
    };
    return result;
  }
  Future<Map<String,String>> getTemp() async {
    var response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=51.66&lon=39.20&lang=ru&appid=42d6e7cd6fb97dd76001814d4d217be6');
    Map<String,String> result = {
      'temp': '${(response.data['main']['temp']-273.15).round()}',
      'feels_like': '${(response.data['main']['feels_like']-273.15).round()}',
      'temp_min': '${(response.data['main']['temp_min']-273.15).round()}',
      'temp_max': '${(response.data['main']['temp_max']-273.15).round()}',
      'pressure': '${response.data['main']['pressure']}',
      'description': '${response.data['weather'][0]['description']}',
      'clouds': '${response.data['clouds']['all'].round()}',
      'wind': '${(response.data['wind']['speed'] * 3.6).round()}',
      'rain': (response.data['rain']!=null
          ? '${(response.data['rain']['1h']).round()}'
          : '0'),
      'snow': (response.data['snow']!=null
          ? '${(response.data['snow']['1h']).round()}'
          : '0'),
      'name': '${response.data['name']}',
    };
    return result;
    }
  }