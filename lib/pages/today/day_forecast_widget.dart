import 'package:intl/intl.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'package:weather1/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DayForecastWidget extends StatelessWidget {
  DayForecastWidget(this.forecast, {super.key});
  final JsonForecast forecast;

  List<Color> gradientColors = [
    AppColors.contentColor1,
    AppColors.contentColor2,
  ];

  late double findMaxY;
  late double findMinY;

  void maxMinInit() {
    findMaxY = forecast.forecast.forecastday[0].day.avgtempC.ceil().toDouble();
    findMinY = forecast.forecast.forecastday[0].day.avgtempC.ceil().toDouble();
    for (int i = 1;i<7;i++) {
      if (forecast.forecast.forecastday[i].day.avgtempC>findMaxY.ceil().toDouble()) findMaxY=forecast.forecast.forecastday[i].day.avgtempC.ceil().toDouble();
      if (forecast.forecast.forecastday[i].day.avgtempC<findMinY.ceil().toDouble()) findMinY=forecast.forecast.forecastday[i].day.avgtempC.ceil().toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    maxMinInit();
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 40,),
          child: LineChart(mainData(),),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    if (value.toInt() == 0) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[0].date)), style: style);
    } else if (value.toInt() == 1) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[1].date)), style: style);
    } else if (value.toInt() == 2) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[2].date)), style: style);
    } else if (value.toInt() == 3) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[3].date)), style: style);
    } else if (value.toInt() == 4) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[4].date)), style: style);
    } else if (value.toInt() == 5) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[5].date)), style: style);
    } else if (value.toInt() == 6) {
      text = Text(DateFormat.E().format(DateTime.parse(forecast.forecast.forecastday[6].date)), style: style);
    // ignore: curly_braces_in_flow_control_structures
    } else text = const Text('', style: style);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    List<bool> q = [true,true,true];
    if (value.ceil() == findMinY.ceil() && q[0]) {
      text = '${findMinY.ceil()}°'; q[0] = !q[0];
    }else if (value.toInt() == findMaxY.ceil() && q[1]) {
      text = '${findMaxY.ceil()}°'; q[1] = !q[1];
    }else if (value.ceil() == ((findMaxY.ceil()+findMinY.ceil())/2).ceil() && q[2]) {
      text = '${((findMaxY.ceil()+findMinY.ceil())/2).ceil()}°'; q[2] = !q[2];
    }else return Container();

    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(text, style: style, textAlign: TextAlign.right),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 6,
      minY: findMinY.ceil().toDouble()-3,
      maxY: findMaxY.ceil().toDouble()+3,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0,forecast.forecast.forecastday[0].day.avgtempC),
            FlSpot(1,forecast.forecast.forecastday[1].day.avgtempC),
            FlSpot(2,forecast.forecast.forecastday[2].day.avgtempC),
            FlSpot(3,forecast.forecast.forecastday[3].day.avgtempC),
            FlSpot(4,forecast.forecast.forecastday[4].day.avgtempC),
            FlSpot(5,forecast.forecast.forecastday[5].day.avgtempC),
            FlSpot(6,forecast.forecast.forecastday[6].day.avgtempC),
          ],
          isCurved: true,
          color: Colors.black,
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:
              gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),

        LineChartBarData(
          spots: [for (double i =0;i<7;i++) FlSpot(i,findMinY.ceil().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
                  show: false,
          ),
        ),
        LineChartBarData(
          spots: [for (double i =0;i<7;i++) FlSpot(i,findMaxY.ceil().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
        ),
        LineChartBarData(
          spots: [for (double i =0;i<7;i++) FlSpot(i,((findMaxY.ceil().toDouble()+findMinY.ceil().toDouble())/2).ceil().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
        ),
      ],
    );
  }
}