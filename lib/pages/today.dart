import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather1/pages/today/chance_of_precipitation_widget.dart';
import 'package:weather1/pages/today/hourly_forecast_widget.dart';
import 'package:weather1/pages/today/day_forecast_widget.dart';
import 'package:weather1/pages/today/small_widget.dart';
import 'package:weather1/pages/today/big_widget.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

import '../json_weatherapi_history/json_history.dart';

class PageToday extends StatelessWidget {
  final JsonForecast forecast;
  final JsonHistory history;
  PageToday(this.forecast, this.history, {super.key});

  static DateTime currentTime = DateTime.now();
  late String txt1;
  late String txt2;
  late String txt3;
  late String txt4;
  late int currentHour;
  late int arrow;

  bool? _arrow(int a,int b) {
    if (b==a) {
      return null;
    } else if (b > a) {
      return false;}
    else{
      return true;
    }
  }
  void _timeInit() {
    DateTime sunriseTime = DateTime(
      currentTime.year,
      currentTime.month,
      currentTime.day,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[0].astro.sunrise)
          .hour,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[0].astro.sunrise)
          .minute,
    );
    DateTime sunsetTime = DateTime(
      currentTime.year,
      currentTime.month,
      currentTime.day,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[0].astro.sunset)
          .hour,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[0].astro.sunset)
          .minute,
    );
    txt1 = DateFormat('HH:mm').format(sunriseTime);
    txt3 = DateFormat('HH:mm').format(sunsetTime);

    (sunriseTime.isBefore(currentTime))
        ? txt2 = '${currentTime.difference(sunriseTime).inHours}ч назад'
        : txt2 = 'через ${(currentTime.difference(sunriseTime).inHours).abs()}ч';

    (sunsetTime.isBefore(currentTime))
        ? txt4 = '${currentTime.difference(sunsetTime).inHours}ч назад'
        : txt4 = 'через ${(currentTime.difference(sunsetTime).inHours).abs()}ч';

    int nowUnix = DateTime(currentTime.year,currentTime.month,currentTime.day,currentTime.hour).millisecondsSinceEpoch ~/ 1000;
      for (int i=0; i<24; i++) {
        if (nowUnix==forecast.forecast.forecastday[0].hour[i].timeEpoch) {
          currentHour = i;
          break;
        }
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
                    '${forecast.current.windKph.ceil()} km/h',
                    (currentHour > 0)
                        ? '${(forecast.current.windKph.ceil() - forecast.forecast.forecastday[0].hour[currentHour - 1].windKph.ceil()).abs()} km/h'
                        : '${(forecast.current.windKph.ceil() - history.forecast.forecastday[0].hour[23].windKph.ceil()).abs()} km/h',
                    arrow: ((currentHour > 0)
                        ? _arrow(forecast.current.windKph.ceil(), forecast.forecast.forecastday[0].hour[currentHour - 1].windKph.ceil())
                        : _arrow(forecast.current.windKph.ceil(), history.forecast.forecastday[0].hour[23].windKph.ceil())),
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
                    '${forecast.current.pressureMb.ceil()} hpa',
                    (currentHour>0)
                        ?'${(forecast.current.pressureMb.ceil()-forecast.forecast.forecastday[0].hour[currentHour-1].pressureMb.ceil()).abs()} hpa'
                        :'${(forecast.current.pressureMb.ceil()-history.forecast.forecastday[0].hour[23].pressureMb.ceil()).abs()} hpa',
                    // '${forecast.current.pressureIn.ceil()} hpa',
                    arrow: ((currentHour>0)
                        ?_arrow(forecast.current.pressureMb.ceil(),
                          forecast.forecast.forecastday[0].hour[currentHour-1].pressureMb.ceil())
                        :_arrow(forecast.current.pressureMb.ceil(),
                          history.forecast.forecastday[0].hour[23].pressureMb.ceil())),
                    img2: 'waves.png',
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SmallWidget(
                    'Group2.png',
                    'UV Index',
                    '${forecast.forecast.forecastday[0].hour[currentHour].uv}',
                    (currentHour>0)
                        ?'${(forecast.forecast.forecastday[0].hour[currentHour].uv.ceil()-forecast.forecast.forecastday[0].hour[currentHour-1].uv.ceil()).abs()}'
                        :'${(forecast.forecast.forecastday[0].hour[currentHour].uv.ceil()-history.forecast.forecastday[0].hour[23].uv.ceil()).abs()}',
                    arrow: ((currentHour>0)
                        ?_arrow(forecast.forecast.forecastday[0].hour[currentHour].uv.ceil(),
                          forecast.forecast.forecastday[0].hour[currentHour-1].uv.ceil())
                        :_arrow(forecast.forecast.forecastday[0].hour[currentHour].uv.ceil(),
                          history.forecast.forecastday[0].hour[23].uv.ceil())),
                    img2: 'light_mode.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 21.png', 'Hourly forecast', 150,
                  widgetData: HourlyForecastWidget(forecast, currentHour)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 32.png', 'Day forecast', 219,
                  widgetData: DayForecastWidget(forecast)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 33.png', 'Chance of precipitation', 213,
                  widgetData: ChanceOfPrecipitationWidget(forecast, currentHour)),
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
