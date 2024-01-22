import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather1/pages/today/chance_of_precipitation_widget.dart';
import 'package:weather1/pages/today/hourly_forecast_widget.dart';
import 'package:weather1/pages/today/day_forecast_widget.dart';
import 'package:weather1/pages/today/small_widget.dart';
import 'package:weather1/pages/today/big_widget.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'package:weather1/resources/app_colors.dart';

import '../json_weatherapi_history/json_history.dart';

class PageToday extends StatefulWidget {
  final JsonForecast forecast;
  final JsonHistory history;
  const PageToday(this.forecast, this.history, {super.key});

  static DateTime currentTime = DateTime.now();

  @override
  State<PageToday> createState() => _PageTodayState();
}

class _PageTodayState extends State<PageToday> {
  late String txt1;

  late String txt2;

  late String txt3;

  late String txt4;

  late int currentHour;

  bool? _arrow(int a, int b) => (b == a) ? null : (a > b);

  @override
  void initState() {
    super.initState();
    _timeInit();
  }

  void _timeInit() {
    DateTime sunriseTime = DateTime(
      PageToday.currentTime.year,
      PageToday.currentTime.month,
      PageToday.currentTime.day,
      DateFormat('hh:mm a')
          .parse(widget.forecast.forecast.forecastday[0].astro.sunrise)
          .hour,
      DateFormat('hh:mm a')
          .parse(widget.forecast.forecast.forecastday[0].astro.sunrise)
          .minute,
    );
    DateTime sunsetTime = DateTime(
      PageToday.currentTime.year,
      PageToday.currentTime.month,
      PageToday.currentTime.day,
      DateFormat('hh:mm a')
          .parse(widget.forecast.forecast.forecastday[0].astro.sunset)
          .hour,
      DateFormat('hh:mm a')
          .parse(widget.forecast.forecast.forecastday[0].astro.sunset)
          .minute,
    );
    txt1 = DateFormat('HH:mm').format(sunriseTime);
    txt3 = DateFormat('HH:mm').format(sunsetTime);

    sunriseTime.isBefore(PageToday.currentTime)
        ? txt2 = '${PageToday.currentTime.difference(sunriseTime).inHours}ч назад'
        : txt2 = 'через ${(PageToday.currentTime.difference(sunriseTime).inHours).abs()}ч';

    sunsetTime.isBefore(PageToday.currentTime)
        ? txt4 = '${PageToday.currentTime.difference(sunsetTime).inHours}ч назад'
        : txt4 = 'через ${(PageToday.currentTime.difference(sunsetTime).inHours).abs()}ч';

    int nowUnix = DateTime(PageToday.currentTime.year,PageToday.currentTime.month,PageToday.currentTime.day,PageToday.currentTime.hour).millisecondsSinceEpoch ~/ 1000;
      for (int i=0; i<24; i++) {
        if (nowUnix==widget.forecast.forecast.forecastday[0].hour[i].timeEpoch) {
          currentHour = i;
          break;
        }
      }
  }

  @override
  Widget build(BuildContext context) {
    var current = widget.forecast.current;
    var forecastHour = widget.forecast.forecast.forecastday[0].hour[currentHour - 1];
    var history = widget.history.forecast.forecastday[0].hour[23];
    return Container(
      color: AppColors.appColor,
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
                  '${current.windKph.round()} km/h',
                  '${(current.windKph.round() -(currentHour > 0
                          ?forecastHour.windKph.round()
                          :history.windKph.round())).abs()} km/h',
                  arrow: _arrow(current.windKph.round(),
                      (currentHour > 0
                          ?forecastHour.windKph.round()
                          :history.windKph.round())),
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
                  '${current.pressureMb.round()} hpa',
                  '${(current.pressureMb.round() - (currentHour > 0
                          ?forecastHour.pressureMb.round()
                          :history.pressureMb.round())).abs()} hpa',
                  arrow: _arrow(current.pressureMb.round(),
                      currentHour > 0
                          ?forecastHour.pressureMb.round()
                          :history.pressureMb.round()),
                  img2: 'waves.png',
                ),
                const SizedBox(
                  width: 16,
                ),
                SmallWidget(
                  'Group2.png',
                  'UV Index',
                  '${current.uv}',
                  '${(current.uv - (currentHour>0
                      ?forecastHour.uv
                      :history.uv)).abs()}',
                  arrow: _arrow(current.uv.round(),
                      currentHour>0
                          ?forecastHour.uv.round()
                          :history.uv.round()),
                  img2: 'light_mode.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BigWidget('Group 21.png', 'Hourly forecast', 150,
                widgetData: HourlyForecastWidget(widget.forecast, currentHour)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BigWidget('Group 32.png', 'Day forecast', 219,
                widgetData: DayForecastWidget(widget.forecast)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: BigWidget('Group 33.png', 'Chance of precipitation', 213,
                widgetData: ChanceOfPrecipitationWidget(widget.forecast, currentHour)),
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
    );
  }
}
