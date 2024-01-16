import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather1/Pages/Home/closed_app_bar.dart';
import 'package:weather1/Pages/Home/opened_app_bar.dart';

import '10_days.dart';
import 'tomorrow.dart';
import 'today.dart';
import 'package:weather1/Pages/Home/button_bar.dart';

class CustomSliverPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  double _maxExtent = 482.0;
  final _minExtent = 228.0;
  final ValueSetter<String> changePage;

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
              const ClosedAppBar(),
              Opacity(
                  opacity: max((_maxExtent - shrinkOffset) - _minExtent, 0) /
                      (_maxExtent - _minExtent),
                  child: const OpenedAppBar()),
            ],
          ),
        ),
        Button(
          changePage: changePage,
        ),
      ],
    );
  }

  @override
  double get maxExtent => _maxExtent;

  //get a => _a;

  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  CustomSliverPersistentHeaderDelegate({required this.changePage});
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  String page = "";

  Widget _buildPageWidget() {
    switch (page) {
      case "PageTomorrow": return PageToday();
      case "Page_10_days": return const Page_10_days();
      default: return PageToday();
    }
  }

  void changePage(String newPage) => setState(() => page = newPage);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 246, 237, 255),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: CustomSliverPersistentHeaderDelegate(
                  changePage: (String newPage) => setState(() => page = newPage)),
            ),
            SliverToBoxAdapter(child: _buildPageWidget())
          ],
        ),
      );
}
