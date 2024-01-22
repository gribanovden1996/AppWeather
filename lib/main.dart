import 'dart:async';
import 'package:flutter/material.dart';

import 'data/navig.dart';
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
  @override
  Widget build(BuildContext context) =>
    const MaterialApp(onGenerateRoute: Routes);
}