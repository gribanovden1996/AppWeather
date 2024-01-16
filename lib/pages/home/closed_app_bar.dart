import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather1/Pages/Home/future_closed_bar.dart';
import 'package:weather1/data/http_openweathermap.dart';
import 'package:weather1/data/http_weatherapi.dart';

class ClosedAppBar extends StatelessWidget {
  const ClosedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Http_openweathermap wheather = context.read();
    HttpWeatherApi wheather = context.read();
    return
      Container(
          color: const Color.fromARGB(255, 226, 211, 250),
          child: FutureBuilder(
              future: wheather.getTemp(),
              builder: (BuildContext context, AsyncSnapshot<Map<String,String>> snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                else {
                  Map<String, String> data = snapshot.data!;
                  return FutureCloseBar(data: data);
                }
              }
          ),
      );
  }
}