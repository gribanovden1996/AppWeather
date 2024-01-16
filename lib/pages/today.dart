import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather1/pages/today/forecast.dart';
import 'package:weather1/pages/today/small_widget.dart';
import 'package:weather1/pages/today/big_widget.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

class PageToday extends StatelessWidget {
  final JsonForecast json;

  PageToday(this.json, {super.key});

  static DateTime nowTime = DateTime.now();
  static int nowUnix = nowTime.millisecondsSinceEpoch ~/ 1000;
  String txt1 = 'load';
  String txt2 = 'load';
  String txt3 = 'load';
  String txt4 = 'load';

  void _timeInit() {
    DateTime sunriseTime = DateTime(
      nowTime.year,
      nowTime.month,
      nowTime.day,
      DateFormat('hh:mm a')
          .parse(json.forecast.forecastday[0].astro.sunrise)
          .hour,
      DateFormat('hh:mm a')
          .parse(json.forecast.forecastday[0].astro.sunrise)
          .minute,
    );
    DateTime sunsetTime = DateTime(
      nowTime.year,
      nowTime.month,
      nowTime.day,
      DateFormat('hh:mm a')
          .parse(json.forecast.forecastday[0].astro.sunset)
          .hour,
      DateFormat('hh:mm a')
          .parse(json.forecast.forecastday[0].astro.sunset)
          .minute,
    );
    txt1 = DateFormat('HH:mm').format(sunriseTime);
    txt3 = DateFormat('HH:mm').format(sunsetTime);

    if (sunriseTime.isBefore(nowTime)) {
      txt2 = '${nowTime.difference(sunriseTime).inHours % 24}ч назад';
    } else {
      txt2 = 'через ${(nowTime.difference(sunriseTime).inHours.abs())}ч';
    }

    if (sunsetTime.isBefore(nowTime)) {
      txt4 = '${nowTime.difference(sunsetTime).inHours % 12}ч назад';
    } else {
      txt4 = 'через ${(nowTime.difference(sunsetTime).inHours).abs()}ч';
    }
  }


  @override
  Widget build(BuildContext context) {
    _timeInit();
    return Container(
      color: const Color.fromARGB(255, 246, 237, 255),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallWidget(
                    'Group1.png',
                    'Wind speed',
                    '${json.current.windKph.ceil()} km/h',
                    '${(json.current.windKph / 10).ceil()}km/h',
                    arrow: true,
                    img2: null,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const SmallWidget(
                    'Group2.png',
                    'Rain chance',
                    '0 mm',
                    '10%',
                    arrow: false,
                    img2: 'rainy.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallWidget(
                    'Group2.png',
                    'Pressure',
                    '${json.current.pressureMb} hpa',
                    '${json.current.pressureIn} hpa',
                    arrow: false,
                    img2: 'waves.png',
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const SmallWidget(
                    'Group2.png',
                    'Snow chance',
                    '0 mm',
                    '10%',
                    arrow: true,
                    img2: 'light_mode.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 21.png', 'Hourly forecast', 150,
                  widgetData: ForecastHour(json)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 32.png', 'Day forecast', 219,
                  widgetData: Row()),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 33.png', 'Chance of rain', 213,
                  widgetData: Row()),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallWidget(
                    'Group3.png',
                    'Sunrise',
                    txt1,
                    txt2,
                    arrow: null,
                    img2: null,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SmallWidget(
                    'Group4.png',
                    'Sunset',
                    txt3,
                    txt4,
                    arrow: null,
                    img2: null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
