import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather1/pages/today/small_widget.dart';
import 'package:weather1/pages/today/big_widget.dart';
import 'package:weather1/data/http_weatherapi.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

class PageToday extends StatelessWidget {
  PageToday({super.key});
  final HttpWeatherApi wheather = HttpWeatherApi();
  static DateTime now = DateTime.now();
  static DateTime nowTime = DateTime(
    now.year,
    now.month,
    now.day,
    now.hour,);
  final int nowUnix = nowTime.millisecondsSinceEpoch ~/ 1000;

  @override
  Widget build(BuildContext context) => Container(
      color: const Color.fromARGB(255, 246, 237, 255),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: FutureBuilder(
                future: wheather.getData(),
                builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
                  if (snapshot.hasError) return const Center(child: Text('error'));
                  if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                  else {
                    String txt1 = 'load';
                    String txt2 = 'load';
                    String txt3 = 'load';
                    if (snapshot.hasData) {
                      JsonForecast json = snapshot.data!;
                      txt1 = json.current.windKph.toString();
                      txt2 = (json.current.windKph / 10).toStringAsFixed(2);
                      txt3 = '0';
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallWidget(
                          'Group1.png', 'Wind speed', '$txt1 km/h', '${txt2}km/h',
                          arrow: true,
                          img2: null,),
                        const SizedBox(width: 16,),
                        SmallWidget(
                          'Group2.png', 'Rain chance', '$txt3 mm', '10%', arrow: false,
                          img2: 'rainy.png',),
                      ],
                    );
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: FutureBuilder(
                future: wheather.getData(),
                builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
                  if (snapshot.hasError) return const Center(child: Text('error'));
                  if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                  else {
                    String txt1 = 'load';
                    String txt2 = 'load';
                    String txt3 = 'load';
                    if (snapshot.hasData) {
                      JsonForecast json = snapshot.data!;
                      txt1 = '${json.current.pressureMb}';
                      txt2 = '${json.current.pressureIn}';
                      txt3 = '0';
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallWidget(
                          'Group2.png', 'Pressure', '$txt1 hpa', '$txt2 hpa',
                          arrow: false,
                          img2: 'waves.png',),
                        const SizedBox(width: 16,),
                        SmallWidget(
                          'Group2.png', 'Snow chance', '$txt3 mm', '10%', arrow: true,
                          img2: 'light_mode.png',),
                      ],
                    );
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 21.png', 'Hourly forecast', 150,
                widgetData:FutureBuilder(
                  future: wheather.getData(),
                  builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
                    if (snapshot.hasError) return const Center(child: Text('error'));
                    if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                    else {
                      JsonForecast json = snapshot.data!;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i<7;i++)
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(DateFormat('HH').format(now.add(Duration(hours: i)))),
                                Image.network('http:${json.forecast.forecastday[0].hour[i].condition.icon}'),
                                Text('${json.forecast.forecastday[0].hour[i].tempC}°'),
                              ],
                            )
                        ],
                      );
                    }
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 32.png', 'Day forecast', 219,
                  widgetData:
                  Row()
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: BigWidget('Group 33.png', 'Chance of rain', 213,
                  widgetData:Row()),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: FutureBuilder(
                  future: wheather.getData(),
                  builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
                    if (snapshot.hasError) return const Center(child: Text('error'));
                    if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
                    else {
                      String txt1 = 'load';
                      String txt2 = 'load';
                      String txt3 = 'load';
                      String txt4 = 'load';
                      JsonForecast json = snapshot.data!;
                      DateTime currentTime = DateTime.now();
                      DateTime sunrise = DateFormat('hh:mm a').parse(json.forecast.forecastday[0].astro.sunrise);
                      DateTime sunriseTime = DateTime(
                        currentTime.year,
                        currentTime.month,
                        currentTime.day,
                        sunrise.hour,
                        sunrise.minute,
                      );
                      DateTime sunset = DateFormat('hh:mm a').parse(json.forecast.forecastday[0].astro.sunset);
                      DateTime sunsetTime = DateTime(
                        currentTime.year,
                        currentTime.month,
                        currentTime.day,
                        sunset.hour,
                        sunset.minute,
                      );
                      txt1 = DateFormat('HH:mm').format(sunriseTime);
                      txt3 = DateFormat('HH:mm').format(sunsetTime);

                      if (sunriseTime.isBefore(currentTime)) txt2 = '${currentTime.difference(sunriseTime).inHours % 24}ч назад';
                      else txt2 = 'через ${(currentTime.difference(sunriseTime).inHours.abs())}ч';


                      if (sunsetTime.isBefore(currentTime)) txt4 = '${currentTime.difference(sunsetTime).inHours % 12}ч назад';
                      else txt4 = 'через ${(currentTime.difference(sunsetTime).inHours).abs()}ч';
                      //txt2 = DateFormat('DD HH:mm').format(currentTime);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmallWidget(
                            'Group3.png', 'Sunrise', txt1, txt2, arrow: null, img2: null,),
                          const SizedBox(width: 16,),
                          SmallWidget(
                            'Group4.png', 'Sunset', txt3, txt4, arrow: null, img2: null,),
                        ],



                      );
                    }
                  }
              ),
            ),
          ],
        ),
      ),
    );
}
