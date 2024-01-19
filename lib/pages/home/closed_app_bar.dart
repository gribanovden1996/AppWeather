import 'package:flutter/material.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';

class ClosedAppBar extends StatelessWidget {
  final JsonForecast json;
  const ClosedAppBar(this.json,{super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
          color: const Color.fromARGB(255, 226, 211, 250),
          child: SafeArea(
            child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 13),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${json.location.region}, ${json.location.country}'),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('${json.current.tempC.ceil()}°',
                                    style: const TextStyle(fontSize: 50)),
                                Text('Feels like ${json.current.feelslikeC.ceil()}°'),
                              ],
                            ),
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.network('http:${json.current.condition.icon}',
                                  fit: BoxFit.cover,
                              ),),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
      );
  }
}