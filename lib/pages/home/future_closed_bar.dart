import 'package:flutter/material.dart';

import '../../json_weatherapi_forecast/json_forecast.dart';

class FutureCloseBar extends StatelessWidget {
  const FutureCloseBar(this.data, {super.key});
  final JsonForecast data;

  @override
  Widget build(BuildContext context) =>
      SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 13),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${data.location.region}, ${data.location.country}'),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('${data.current.tempC.ceil()}°',
                                    style: const TextStyle(fontSize: 50)),
                                Text('Feels like ${data.current.feelslikeC.ceil()}°'),
                              ],
                            ),
                            Transform.scale(
                                scale: 0.5,
                                child: Image.network('http:${data.current.condition.icon}', fit: BoxFit.contain)
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      );
}
