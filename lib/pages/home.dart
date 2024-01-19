import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather1/Pages/tomorrow.dart';
import 'package:weather1/json_weatherapi_history/json_history.dart';
import 'package:weather1/resources/app_colors.dart';

import '../data/geoloc.dart';
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
  static DateTime currentTime = DateTime.now();
  String page ='';
  final weather = RestClient(Dio());
  final loc = Geoloc();

  Widget _buildPageWidget(JsonForecast forecast, JsonHistory history) {
    switch (page) {
      case "PageTomorrow": return PageTomorrow(forecast,);
      case "Page_10_days": return Page10Days(forecast);
      default: return PageToday(forecast,history);
    }
  }

  void changePage(String newPage) => setState(() => page = newPage);

  @override
  Widget build(BuildContext context) {
    double contextWidth = min(MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.width) + 70;
    return Scaffold(
        backgroundColor: AppColors.appColor,
        body: FutureBuilder(
          future: loc.getCurrentLocation(),
          builder: (BuildContext context, AsyncSnapshot<Position?> snapshot) {
            if (snapshot.hasError) return const Center(child: Text('error1'));
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              Position locat = snapshot.data!;
              String pos = '${locat.latitude}, ${locat.longitude}';
              String pos2 = '51.660781, 39.200296';
              return (!snapshot.hasData)
                  ? const Center(child: CircularProgressIndicator())
                  :FutureBuilder(
                  future: weather.getData2(
                      '787aa804050b4da7b70132421241101',
                      10,
                      'ru',
                      pos
                  ),
                  builder: (BuildContext context,
                      AsyncSnapshot<JsonForecast> snapshot) {
                    if (snapshot.hasError) {
                      return Center(child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('error2'),
                          Text(pos),
                          Image.network('http://cdn.weatherapi.com/weather/64x64/day/248.png')
                        ],
                      ));
                    }
                    if (!snapshot.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      JsonForecast forecast = snapshot.data!;
                      return FutureBuilder(
                          future: weather.getData3(
                              '787aa804050b4da7b70132421241101',
                              pos,
                              'ru',
                              DateFormat('yyyy-MM-dd').format(currentTime.subtract(const Duration(days: 1)))
                          ),
                          builder: (BuildContext context,
                              AsyncSnapshot<JsonHistory> snapshot) {
                                if (snapshot.hasError) return const Center(child: Text('error1'));
                                if (!snapshot.hasData) {
                                return const Center(child: CircularProgressIndicator());
                                } else {
                                  JsonHistory history = snapshot.data!;
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
                                      SliverToBoxAdapter(child: _buildPageWidget(forecast, history))
                                    ],
                                  );
                                }
                          }
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
