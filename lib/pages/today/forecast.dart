import 'package:flutter/cupertino.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

class ForecastHour extends StatelessWidget {
  final JsonForecast json;
  ForecastHour(this.json, {super.key});

  static DateTime now = DateTime.now();
  static int nowUnix = DateTime(now.year,now.month,now.day,now.hour).millisecondsSinceEpoch ~/ 1000;
  late int k;
  late int end;
  void _timeInit() {
    DateTime endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
    Duration timeUntilEndOfDay = endOfDay.difference(now);
    end = timeUntilEndOfDay.inHours+1;
    for (int i=0;i<24;i++) {
      if (nowUnix==json.forecast.forecastday[0].hour[i].timeEpoch) {
        k=i;
        break;
      }
    }
  }
  Column dayColumn(int i, String icon, int a) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('$i'),
      Image.network('http:$icon'),
      Text('$a'),
    ],
  );
  @override
  Widget build(BuildContext context) {
    _timeInit();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i<6;i++,k++)
          if (k<24) dayColumn(
              k,
              json.forecast.forecastday[0].hour[k].condition.icon,
              json.forecast.forecastday[0].hour[k].tempC.ceil()
          )
          else dayColumn(
              k-24,
              json.forecast.forecastday[1].hour[k-24].condition.icon,
              json.forecast.forecastday[1].hour[k-24].tempC.ceil()
          )
      ],
    );
  }
}
