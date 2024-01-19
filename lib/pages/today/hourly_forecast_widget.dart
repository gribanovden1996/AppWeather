import 'package:flutter/cupertino.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

import '../../resources/app_text_style.dart';

class HourlyForecastWidget extends StatelessWidget {
  final JsonForecast forecast;
  final int currentHour;
  const HourlyForecastWidget(this.forecast, this.currentHour, {super.key});

  Widget dayColumn(int hour, String icon, int temp) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('$hourч',
        style: styleDayWidgetForecast2,
      ),
      Image.network('http:$icon',width: 32,height: 32,),
      Text('$temp°',
        style: styleDayWidgetForecast,
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    int k = currentHour;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i<6;i++,k++)
          if (k<24) dayColumn(
              k,
              forecast.forecast.forecastday[0].hour[k].condition.icon,
              forecast.forecast.forecastday[0].hour[k].tempC.ceil()
          )
          else dayColumn(
              k-24,
              forecast.forecast.forecastday[1].hour[k-24].condition.icon,
              forecast.forecast.forecastday[1].hour[k-24].tempC.ceil()
          )
      ],
    );
  }
}
