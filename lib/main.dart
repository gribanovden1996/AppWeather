import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather1/data/http_openweathermap.dart';
import 'package:weather1/data/http_weatherapi.dart';

import 'data/navig.dart';
import 'logger.dart';


void main() {
  runZonedGuarded(() => runApp(const MyApp()), (error, stack) {
    logger.e(error, stackTrace: stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>
    Provider<HttpWeatherApi>(
      create: (BuildContext context) { return HttpWeatherApi(); },
      child:
        MaterialApp(
          title: 'Weather',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: Routes,
        ),
     );
}