import 'dart:math';
import 'package:flutter/material.dart';
import '../../json_weatherapi_forecast/json_forecast.dart';

class BarChartSample1 extends StatelessWidget {
  final JsonForecast forecast;
  BarChartSample1(this.forecast, {super.key});
  BoxDecoration boxDecoration1 = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(100)),
    color: Colors.white,
  );
  BoxDecoration boxDecoration2 = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(100)),
    color: Color.fromARGB(255,138, 32, 213),
  );
  BoxDecoration boxDecoration3 = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(100)),
    color: Color.fromARGB(0, 250, 237, 255),
  );
  static DateTime now = DateTime.now();
  static int nowUnix = DateTime(now.year,now.month,now.day,now.hour).millisecondsSinceEpoch ~/ 1000;
  late int k;
  void _timeInit() {
    DateTime endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
    Duration timeUntilEndOfDay = endOfDay.difference(now);
    for (int i=0;i<24;i++) {
      if (nowUnix==forecast.forecast.forecastday[0].hour[i].timeEpoch) {
        k=i;
        break;
      }
    }
  }
  Row row(double widthX, int txt1, double chance) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(width: 25,
        child: Align(
            alignment: Alignment.centerRight,
            child: Text('$txt1'))),
      const SizedBox(width: 20,),
      SizedBox(
        width: widthX-180,
        height: 25,
        child: Stack(
          children: [
            Container(
                decoration: boxDecoration1
            ),
            Row(
              children: [
                SizedBox(
                  width: (widthX-180)*chance/100,
                  child: Container(decoration: boxDecoration2),),
                SizedBox(
                  width: (widthX-180)*(1-chance/100),
                  child: Container(decoration: boxDecoration3),),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(width: 20,),
      SizedBox(
          width: 30,
          child: Align(
              alignment: Alignment.centerRight,
              child: Text('$chance%'))),
    ],
  );

  @override
  Widget build(BuildContext context) {
    _timeInit();
    double widthX = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i=0; i<4;i++,k++)
            if (k<24 ) row(
                widthX,
                k,
                max(forecast.forecast.forecastday[0].hour[k].chanceOfSnow,forecast.forecast.forecastday[0].hour[k].chanceOfRain),
            )
            else row(
                widthX,
                k-24,
                max(forecast.forecast.forecastday[1].hour[k-24].chanceOfSnow,forecast.forecast.forecastday[1].hour[k-24].chanceOfRain)
            ),
        ],
      ),
    );
  }
}
