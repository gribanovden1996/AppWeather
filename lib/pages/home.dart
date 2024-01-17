import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather1/pages/Home/closed_app_bar.dart';
import 'package:weather1/pages/Home/opened_app_bar.dart';

import '../data/retrofit.dart';
import '../json_weatherapi_forecast/json_forecast.dart';
import '10_days.dart';
import 'today.dart';
import 'package:weather1/pages/Home/button_bar.dart';

class CustomSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverPersistentHeaderDelegate(this.changePage,this.json, this.t);
  final _minExtent = 228.0;
  final ValueSetter<String> changePage;
  final JsonForecast json;
  final double t;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // _maxExtent = t;
    return Stack(
      children: [
        Container(color: const Color.fromARGB(255, 246, 237, 255)),
        SizedBox(
          height: min(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width),
          child: Stack(
            children: [
              ClosedAppBar(json),
              Opacity(
                  opacity: max((t - shrinkOffset) - _minExtent, 0) /
                      (t - _minExtent),
                  child: OpenedAppBar(json)),
            ],
          ),
        ),
        Button(changePage),
      ],
    );
  }

  @override
  double get maxExtent => t;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;


}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  String page = "";
  static final dio = Dio();
  final weather = RestClient(dio);
  Widget _buildPageWidget(JsonForecast json) {
    switch (page) {
      case "PageTomorrow": return PageToday(json);
      case "Page_10_days": return Page_10_days(json);
      default: return PageToday(json);
    }
  }

  void changePage(String newPage) => setState(() => page = newPage);

  @override
  Widget build(BuildContext context) {
    double t = min(MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.width) +
        70;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 237, 255),
        body: FutureBuilder(
            future: weather.getData(),
            builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
              if (snapshot.hasError) return const Center(child: Text('error'));
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                JsonForecast json = snapshot.data!;
                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPersistentHeader(
                      pinned: true,
                      delegate:
                      CustomSliverPersistentHeaderDelegate((String newPage) =>
                              setState(() => page = newPage),json,t
                      ),
                    ),
                    SliverToBoxAdapter(child: _buildPageWidget(json))
                  ],
                );
              }
            }
        ),
      );
  }
}
