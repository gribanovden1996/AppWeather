import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather1/resources/app_colors.dart';

import '../../resources/app_text_style.dart';

class DayWidget extends StatelessWidget {
  const DayWidget (this.img,  this.day, this.text, this.tempMax, this.tempMin, {super.key});
  final String img;
  final String day;
  final String text;
  final double tempMax;
  final double tempMin;

  @override
  Widget build(BuildContext context) =>
      Container(
        height: 84,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Color.fromARGB(255, 235, 222, 255),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 18,left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(day,
                      style: styleDayWidget(AppColors.contentColorBlack)),
                    Text(text,
                      style: styleDayWidget(AppColors.dayWidget)),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 45,top: 15,bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('${tempMax.ceil()}°',
                              style: styleDayWidget(AppColors.dayWidgetTemp)),
                          Text('${tempMin.ceil()}°',
                              style: styleDayWidget(AppColors.dayWidgetTemp)),
                        ],
                      ),
                    ),
                    const Divider(height: 35,thickness: 4,color: Colors.black,endIndent: 12),
                    Image.network('http:$img'),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/day_widget/background.png'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.expand_more)),
                ]
              ),
            )
          ],
        ),
      );
}