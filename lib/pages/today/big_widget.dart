import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather1/resources/app_colors.dart';

import '../../resources/app_text_style.dart';

class BigWidget extends StatelessWidget {
  const BigWidget (this.img,  this.txt1, this.height1,{super.key, required this.widgetData});
  final Widget widgetData;
  final String img;
  final String txt1;
  final double height1;
  static String path = 'assets/today/';
  @override
  Widget build(BuildContext context) =>
      Container(
        width: double.infinity,
        height: height1,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: AppColors.contentColor2,
        ),
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 12,left: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(path+img),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(txt1,
                        style: styleBigWidget),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 13,left: 20,right: 20),
              child: widgetData,
            )
          ],
        ),
      );
}