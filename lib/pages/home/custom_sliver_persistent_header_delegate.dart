import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../json_weatherapi_forecast/json_forecast.dart';
import 'button_bar.dart';
import 'closed_app_bar.dart';
import 'opened_app_bar.dart';

class CustomSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverPersistentHeaderDelegate(this.changePage,this.forecast, this.contextWidth);
  final _minExtent = 228.0;
  final ValueSetter<String> changePage;
  final JsonForecast forecast;
  final double contextWidth;

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent) {
    return Stack(
      children: [
        Container(color: const Color.fromARGB(255, 246, 237, 255)),
        SizedBox(
          height: min(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width),
          child: Stack(
            children: [
              ClosedAppBar(forecast),
              Opacity(
                  opacity: max((contextWidth - shrinkOffset) - _minExtent, 0) /
                      (contextWidth - _minExtent),
                  child: OpenedAppBar(forecast)),
            ],
          ),
        ),
        Button(changePage),
      ],
    );
  }

  @override
  double get maxExtent => contextWidth;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}