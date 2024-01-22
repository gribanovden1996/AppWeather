import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather1/resources/app_colors.dart';

TextStyle styleOpenedBar(double size,int w) => TextStyle(
  fontSize: size,
  color: Colors.white,
  fontWeight: FontWeight.values[w],
  fontFamily: 'ProductSans',
);

TextStyle styleButtonBar(Color color) => TextStyle(
  fontSize: 16,
  color: color,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);

TextStyle styleSmallWidget1(double size) => TextStyle(
  fontSize: size,
  color: AppColors.smallWidgetText,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);
TextStyle styleSmallWidget2 = TextStyle(
  fontSize: 11,
  color: AppColors.smallWidgetText,
  fontWeight: FontWeight.values[5],
  fontFamily: GoogleFonts.openSans().fontFamily,
);

TextStyle styleBigWidget = TextStyle(
  fontSize: 14,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);

TextStyle styleDayWidget(Color color) => TextStyle(
  fontSize: 16,
  color: color,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);

TextStyle styleChanceWidget = TextStyle(
  fontSize: 15,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: GoogleFonts.openSans().fontFamily,
);

TextStyle styleChanceWidget2 = TextStyle(
  fontSize: 15,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);

TextStyle styleDayWidgetForecast = TextStyle(
  fontSize: 18.795,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);
TextStyle styleDayWidgetForecast2 = TextStyle(
  fontSize: 13.157,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: GoogleFonts.openSans().fontFamily,
);
TextStyle styleForecastWidget = TextStyle(
  fontSize: 15,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);
TextStyle styleForecastWidget2 = TextStyle(
  fontSize: 16,
  color: AppColors.contentColorBlack,
  fontWeight: FontWeight.values[4],
  fontFamily: 'ProductSans',
);