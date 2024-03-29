import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'date_time_widget.dart';
import 'package:weather1/resources/app_resources.dart';

class OpenedAppBar extends StatelessWidget {
  final JsonForecast forecast;
  final double contextWidth;
  const OpenedAppBar(this.forecast,this.contextWidth,{super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 246, 237, 255),),
        Container(
          height: contextWidth,
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
                      SizedBox(
                        width: MediaQuery.of(context).size.width-100,
                        child: AutoSizeText('${forecast.location.region}, ${forecast.location.country}',
                          style: styleOpenedBar(22,4),
                        maxLines: 1,),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,)),],),),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width-160,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        SizedBox(
                          width:(MediaQuery.of(context).size.width-160)*0.5,
                          child: AutoSizeText('${forecast.current.tempC.ceil()}°',
                              style: styleOpenedBar(112,4),
                          maxLines: 1,),
                        ),
                        SizedBox(
                          width:(MediaQuery.of(context).size.width-160)*0.5,
                          child: AutoSizeText('Feels like ${forecast.current.feelslikeC.ceil()}°',
                              textAlign: TextAlign.left,
                              style: styleOpenedBar(18,4),),
                        ),],),
                  ),),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: DateTimeWidget()),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 150,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 107,
                          height: 107,
                          child: Image.network('https:${forecast.current.condition.icon}',
                            fit: BoxFit.cover,
                          ),),
                        AutoSizeText(forecast.current.condition.text,
                          style: styleOpenedBar(22,4),
                          maxLines: 2,
                          textAlign: TextAlign.center,
                        ),],),
                  ),),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Day ${forecast.forecast.forecastday[0].day.maxtempC.ceil()}°',
                        style: styleOpenedBar(18,7),),
                      Text('Night ${forecast.forecast.forecastday[0].day.mintempC.ceil()}°',
                        style: styleOpenedBar(18,7),)
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