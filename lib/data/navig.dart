import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/10_days.dart';
import '../Pages/home.dart';
import '../Pages/tomorrow.dart';
import '../Pages/today.dart';

Route<dynamic>? Routes(RouteSettings settings) {
  switch(settings.name) {
    case "/": return MaterialPageRoute(builder: (context) => Home());
    case "/PageTuday": return MaterialPageRoute(builder: (context) => PageTuday());
    case "/PageTomorrow": return MaterialPageRoute(builder: (context) => const PageTomorrow());
    case "/Page_10_days": return MaterialPageRoute(builder: (context) => const Page_10_days());
    default : throw Exception("Unknown");
  }
}