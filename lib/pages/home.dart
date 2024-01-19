import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather1/Pages/tomorrow.dart';

import '../data/geolocator.dart';
import '../data/retrofit.dart';
import '../json_weatherapi_forecast/json_forecast.dart';
import '10_days.dart';
import '../pages/home/custom_sliver_persistent_header_delegate.dart';
import 'today.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  String page ='';
  final weather = RestClient(Dio());
  final loc = Geoloc();

  Widget _buildPageWidget(JsonForecast forecast) {
    switch (page) {
      case "PageTomorrow": return PageTomorrow(forecast);
      case "Page_10_days": return Page10Days(forecast);
      default: return PageToday(forecast);
    }
  }

  void changePage(String newPage) => setState(() => page = newPage);

  @override
  Widget build(BuildContext context) {
    double contextWidth = min(MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.width) + 70;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 237, 255),
        body: FutureBuilder(
          future: loc.getCurrentLocation(),
          builder: (BuildContext context, AsyncSnapshot<Position?> snapshot) {
            if (snapshot.hasError) return const Center(child: Text('error'));
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              Position locat = snapshot.data!;
              String pos = '${locat.latitude} ${locat.longitude}';
              return (!snapshot.hasData)
                  ? const Center(child: CircularProgressIndicator())
                  :
              FutureBuilder(
                  future: weather.getData2(
                      '787aa804050b4da7b70132421241101',
                      10,
                      'ru',
                      pos
                  ),
                  builder: (BuildContext context,
                      AsyncSnapshot<JsonForecast> snapshot) {
                    if (snapshot.hasError)
                      return const Center(child: Text('error'));
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      JsonForecast forecast = snapshot.data!;
                      return CustomScrollView(
                        physics: const BouncingScrollPhysics(),
                        slivers: [
                          SliverPersistentHeader(
                            pinned: true,
                            delegate:
                            CustomSliverPersistentHeaderDelegate(
                                changePage,
                                forecast,
                                contextWidth),
                          ),
                          SliverToBoxAdapter(child: _buildPageWidget(forecast))
                        ],
                      );
                    }
                  }
              );
            }
          }
        ),
      );
  }
}
