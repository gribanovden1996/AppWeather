import 'dart:core';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather1/resources/app_colors.dart';

import '../../resources/app_text_style.dart';

class SmallWidget extends StatelessWidget {
  const SmallWidget (this.img,  this.txt1, this.txt2, this.txt3, {required this.arrow, required this.img2, super.key});
  final String img;
  final String? img2;
  final String txt1;
  final String txt2;
  final String txt3;
  final bool? arrow;
  static String path ='assets/small_widget/';
  
  @override
  Widget build(BuildContext context) =>
      Expanded(
        child: Container(
            height: 65,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: AppColors.smallWidgetConteiner,
            ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(path+img),
                              if (img2 != null) Image.asset(path+img2!)
                            ]),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(txt1,
                              style: styleSmallWidget1(14)),
                          Text(txt2,
                              style: styleSmallWidget1(16)),
                        ],
                      )
                  ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (arrow != null)
                        arrow!
                          ? const Icon(Icons.arrow_drop_down, size: 16, color: Color.fromARGB(255, 186, 26, 26))
                          : const Icon(Icons.arrow_drop_up, size: 16, color: Color.fromARGB(255, 138, 32, 213)),
                      Text(
                        txt3,
                        style: styleSmallWidget2,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
}