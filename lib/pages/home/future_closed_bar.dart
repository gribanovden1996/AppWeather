import 'package:flutter/material.dart';

class FutureCloseBar extends StatelessWidget {
  const FutureCloseBar({super.key, required this.data});
  final Map<String,String> data;

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
                          Text('${data['name']}, ${data['country']}'),
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
                                Text('${data['temp']}°',
                                    style: const TextStyle(fontSize: 50)),
                                Text('Feels like ${data['feels_like']}°'),
                              ],
                            ),
                            Transform.scale(
                                scale: 0.5,
                                child: Image.network('http:${data['icon']}', fit: BoxFit.contain)
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
