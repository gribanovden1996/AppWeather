import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class day_widget extends StatelessWidget {
  const day_widget (this.img,  this.txt1, this.txt2, this.txt3, this.txt4, {super.key});
  final String img;
  final String txt1;
  final String txt2;
  final String txt3;
  final String txt4;
  static String path = 'assets/10_day/';

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
                    Text(txt1,
                      style: GoogleFonts.openSans(fontSize: 16)),
                    Text(txt2,
                      style: GoogleFonts.openSans(fontSize: 16,
                        color: const Color.fromARGB(255, 73, 70, 73))),
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
                          Text(txt3,
                              style: GoogleFonts.openSans(fontSize: 16,
                                  color: const Color.fromARGB(255, 46, 0, 78))),
                          Text(txt4,
                              style: GoogleFonts.openSans(fontSize: 16,
                                  color: const Color.fromARGB(255, 46, 0, 78))),
                        ],
                      ),
                    ),
                    const Divider(height: 35,thickness: 4,color: Colors.black,endIndent: 12),
                    Image.asset(path+img),
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