import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'package:weather1/pages/today/small_widget.dart';

import '10_day/day_widget.dart';




class Page_10_days extends StatelessWidget {
  final JsonForecast forecast;
  const Page_10_days(this.forecast, {super.key});

  @override
  Widget build(BuildContext context) =>
      Container(
        color: const Color.fromARGB(255, 246, 237, 255),
        child: Padding(
          padding: const EdgeInsets.only(right:16.0,left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i<10; i++) Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: DayWidget(
                  forecast.forecast.forecastday[i].day.condition.icon,
                  DateFormat('EEEE, MMM DD').format(DateTime.parse(forecast.forecast.forecastday[i].date)),
                  forecast.forecast.forecastday[i].day.condition.text,
                  forecast.forecast.forecastday[i].day.maxtempC,
                  forecast.forecast.forecastday[i].day.mintempC,)
              ),
            ],
          ),
        ),
      );
}
