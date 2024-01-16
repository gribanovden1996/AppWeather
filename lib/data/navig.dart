import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/10_days.dart';
import '../Pages/home.dart';
import '../Pages/tomorrow.dart';
import '../pages/today.dart';

Route<dynamic>? Routes(RouteSettings settings) {
  switch(settings.name) {
    case "/": return MaterialPageRoute(builder: (context) => const Home());
    // case "/PageTuday": return MaterialPageRoute(builder: (context) => PageToday());
    // case "/PageTomorrow": return MaterialPageRoute(builder: (context) => const PageTomorrow());
    // case "/Page_10_days": return MaterialPageRoute(builder: (context) => const Page_10_days());
    default : throw Exception("Unknown Routes");
  }
}