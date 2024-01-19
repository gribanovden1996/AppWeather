import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather1/pages/today/chance_of_precipitation_widget.dart';
import 'package:weather1/pages/today/hourly_forecast_widget.dart';
import 'package:weather1/pages/today/day_forecast_widget.dart';
import 'package:weather1/pages/today/small_widget.dart';
import 'package:weather1/pages/today/big_widget.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

import '../data/geoloc.dart';

class PageTomorrow extends StatelessWidget {
  final JsonForecast forecast;
  PageTomorrow(this.forecast, {super.key});

  static DateTime currentTime = DateTime.now();
  DateTime tomorrow  = currentTime.add(const Duration(days: 1));

  late String txt1;
  late String txt2;
  late String txt3;
  late String txt4;
  late int currentHour;

  void _timeInit() {
    DateTime sunriseTime = DateTime(
      tomorrow.year,
      tomorrow.month,
      tomorrow.day,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[1].astro.sunrise)
          .hour,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[1].astro.sunrise)
          .minute,
    );
    DateTime sunsetTime = DateTime(
      tomorrow.year,
      tomorrow.month,
      tomorrow.day,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[1].astro.sunset)
          .hour,
      DateFormat('hh:mm a')
          .parse(forecast.forecast.forecastday[1].astro.sunset)
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
    final loc = Geoloc();
    return Container(
      color: const Color.fromARGB(255, 246, 237, 255),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: FutureBuilder(
                future: loc.getCurrentLocation(),
                builder: (BuildContext context, AsyncSnapshot<Position?> snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child: Text('error'));
                  }
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    Position locat = snapshot.data!;
                    return Text('${locat.latitude}, ${locat.longitude}');
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallWidget(
                    'Group1.png',
                    'Wind speed',
                    '${forecast.forecast.forecastday[1].day.maxwindKph.ceil()} km/h',
                    '${(forecast.forecast.forecastday[1].day.maxwindKph / 10).ceil()}km/h',
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
                    '${forecast.current.pressureMb.ceil()} hpa',
                    '${forecast.current.pressureIn.ceil()} hpa',
                    arrow: false,
                    img2: 'waves.png',
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  SmallWidget(
                    'Group2.png',
                    'UV Index',
                    '${forecast.forecast.forecastday[0].hour[currentHour].uv}',
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
