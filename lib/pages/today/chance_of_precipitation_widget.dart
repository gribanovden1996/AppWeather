import 'dart:math';
import 'package:flutter/material.dart';
import 'package:weather1/resources/app_colors.dart';
import '../../json_weatherapi_forecast/json_forecast.dart';
import '../../resources/app_text_style.dart';

class ChanceOfPrecipitationWidget extends StatelessWidget {
  final JsonForecast forecast;
  final int currentHour;
  ChanceOfPrecipitationWidget(this.forecast, this.currentHour, {super.key});

  static BoxDecoration boxDecor(Color color) => BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(100)),
    color: color,);
  late int k;

  Widget row(double widthX, int txt1, double chance) => Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(width: 25,
        child: Align(
            alignment: Alignment.centerRight,
            child: Text('$txt1ч',
              style: styleChanceWidget,
            ))),
      const SizedBox(width: 20,),
      SizedBox(
        width: widthX-180,
        height: 25,
        child: Stack(
          children: [
            Container(
                decoration: boxDecor(Colors.white)
            ),
            Row(
              children: [
                SizedBox(
                  width: (widthX-180)*chance/100,
                  child: Container(decoration: boxDecor(AppColors.chanceOfPrecipitationWidget1)),),
                SizedBox(
                  width: (widthX-180)*(1-chance/100),
                  child: Container(decoration: boxDecor(AppColors.chanceOfPrecipitationWidget2)),),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(width: 20,),
      SizedBox(
          width: 35,
          child: Align(
              alignment: Alignment.centerRight,
              child: Text('${chance.ceil()}%',
                style: styleChanceWidget2,
              ))),
    ],
  );

  @override
  Widget build(BuildContext context) {
    k = currentHour;
    double contextWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i=0; i<4;i++,k++)
            (k<24 )
              ?row(
                  contextWidth,
                  k,
                  max(forecast.forecast.forecastday[0].hour[k].chanceOfSnow,
                      forecast.forecast.forecastday[0].hour[k].chanceOfRain),
              )
              :row(
                contextWidth,
                k-24,
                max(forecast.forecast.forecastday[1].hour[k-24].chanceOfSnow,
                    forecast.forecast.forecastday[1].hour[k-24].chanceOfRain)
              ),
        ],
      ),
    );
  }
}
