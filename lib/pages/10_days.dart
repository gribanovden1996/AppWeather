import 'package:flutter/material.dart';
import 'package:weather1/Pages/Tuday/small_widget.dart';

import '10_day/day_widget.dart';




class Page_10_days extends StatelessWidget {
  const Page_10_days({super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
        color: const Color.fromARGB(255, 246, 237, 255),
        child: const Padding(
          padding: EdgeInsets.only(right:16.0,left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Today','Cloudy and Sunny','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 19','Cloudy','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 20','Cloudy','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 21','Cloudy and Sunny','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 22','Cloudy','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 23','Cloudy and Sunny','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 24','Cloudy','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 25','Cloudy and Sunny','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 26','Cloudy','3°','-2°',)),
              Padding(
                  padding: EdgeInsets.only(bottom: 18.0),
                  child: day_widget('day_1.png','Thursday, Jan 27','Cloudy and Sunny','3°','-2°',)),
            ],
          ),
        ),
      );
}
