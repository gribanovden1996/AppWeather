import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/navig.dart';
import 'data/retrofit.dart';
import 'logger.dart';


void main() =>
    runZonedGuarded(
            () => runApp(const MyApp()),
            (error, stack) => logger.e(
                error,
                stackTrace: stack)
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final dio = Dio();
  @override
  Widget build(BuildContext context) =>
    Provider<RestClient>(
      create: (BuildContext context) { return RestClient(dio); },
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