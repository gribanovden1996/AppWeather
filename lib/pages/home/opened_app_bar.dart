import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather1/Pages/Home/future_opened_bar.dart';
import 'package:weather1/data/http_openweathermap.dart';
import 'package:weather1/data/http_weatherapi.dart';

class OpenedAppBar extends StatelessWidget {
  const OpenedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Http_openweathermap wheather = context.read();
    HttpWeatherApi wheather = context.read();
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 246, 237, 255),
        ),
        Container(
          height: min(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width) + 73,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home/1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
        ),
        FutureBuilder(
          future: wheather.getTemp(),
          builder: (BuildContext context, AsyncSnapshot<Map<String,String>> snapshot) {
            if (snapshot.hasError) return const Center(child: Text('error'));
            if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
            else {
              Map<String, String> data = snapshot.data!;
              return FutureOpenBar(data: data);
            }
          }
        ),
        ],
    );
  }
}