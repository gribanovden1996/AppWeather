import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'date_time_widget.dart';

class OpenedAppBar extends StatelessWidget {
  final JsonForecast json;
  const OpenedAppBar(this.json,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 246, 237, 255),),
        Container(
          height: min(MediaQuery.of(context).size.height,
              MediaQuery.of(context).size.width) + 73,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home/1.png'),
              fit: BoxFit.cover,),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),),),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${json.location.region}, ${json.location.country}',
                        style: const TextStyle(color: Colors.white),),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,)),],),),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text('${json.current.tempC.ceil()}°',
                          style: GoogleFonts.openSans(
                              fontSize: 100, color: Colors.white)),
                      Text('Feels like ${json.current.feelslikeC.ceil()}°',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.openSans(
                              fontSize: 10, color: Colors.white)),],),),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: DateTimeWidget()),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 107,
                        height: 107,
                        child: Image.network('https:${json.current.condition.icon}',
                          fit: BoxFit.cover,
                        ),),
                      Text(json.current.condition.text,
                          style: GoogleFonts.openSans(
                              fontSize: 12, color: Colors.white)),],),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Day ${json.forecast.forecastday[0].day.maxtempC.ceil()}°',
                          style: const TextStyle(color: Colors.white)),
                      Text('Night ${json.forecast.forecastday[0].day.mintempC.ceil()}°',
                          style: const TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        ],
    );
  }
}