import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather1/pages/Home/closed_app_bar.dart';
import 'package:weather1/pages/Home/opened_app_bar.dart';
import 'package:weather1/data/http_weatherapi.dart';

import '../json_weatherapi_forecast/json_forecast.dart';
import '10_days.dart';
import 'today.dart';
import 'package:weather1/pages/Home/button_bar.dart';

class CustomSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  double _maxExtent = 482.0;
  final _minExtent = 228.0;
  final ValueSetter<String> changePage;
  final JsonForecast json;

  //Button _a = const Button();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    _maxExtent = min(MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width) +
        70;
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
                  opacity: max((_maxExtent - shrinkOffset) - _minExtent, 0) /
                      (_maxExtent - _minExtent),
                  child: OpenedAppBar(json)),
            ],
          ),
        ),
        Button(changePage),
      ],
    );
  }

  @override
  double get maxExtent => _maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  CustomSliverPersistentHeaderDelegate(this.changePage,this.json);
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  String page = "";
  final weather = HttpWeatherApi();
  Widget _buildPageWidget(JsonForecast json) {
    switch (page) {
      case "PageTomorrow": return PageToday(json);
      case "Page_10_days": return Page_10_days(json);
      default: return PageToday(json);
    }
  }

  void changePage(String newPage) => setState(() => page = newPage);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 237, 255),
        body: FutureBuilder(
            future: weather.getData(),
            builder: (BuildContext context, AsyncSnapshot<JsonForecast> snapshot) {
              if (snapshot.hasError) return const Center(child: Text('error'));
              if (!snapshot.hasData)
                return const Center(child: CircularProgressIndicator());
              else {
                JsonForecast json = snapshot.data!;
                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPersistentHeader(
                      pinned: true,
                      delegate:
                      CustomSliverPersistentHeaderDelegate((String newPage) =>
                              setState(() => page = newPage),json
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
