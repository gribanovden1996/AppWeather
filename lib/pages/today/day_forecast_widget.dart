import 'package:intl/intl.dart';
import 'package:weather1/json_weatherapi_forecast/json_forecast.dart';
import 'package:weather1/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DayForecastWidget extends StatefulWidget {
  const DayForecastWidget(this.forecast, {super.key});
  final JsonForecast forecast;

  @override
  State<DayForecastWidget> createState() => _DayForecastWidgetState();
}

class _DayForecastWidgetState extends State<DayForecastWidget> {
  List<Color> gradientColors = [
    AppColors.contentColor1,
    AppColors.contentColor2,
  ];

  late double findMaxY;

  late double findMinY;

  void _maxMinInit() {
    var forecastday = widget.forecast.forecast.forecastday;
    findMaxY = forecastday[0].day.avgtempC.round().toDouble();
    findMinY = forecastday[0].day.avgtempC.round().toDouble();
    for (int i = 1; i < 7; i++) {
      if (forecastday[i].day.avgtempC>findMaxY.round().toDouble()) findMaxY=forecastday[i].day.avgtempC.round().toDouble();
      if (forecastday[i].day.avgtempC<findMinY.round().toDouble()) findMinY=forecastday[i].day.avgtempC.round().toDouble();
    }
  }

  @override
  void initState(){
    super.initState();
    _maxMinInit();
  }

  @override
  Widget build(BuildContext context) => Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,right: 10),
          child: LineChart(mainData(),),
        ),
      ],
    );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text = Text('', style: styleForecastWidget);
    var forecastday = widget.forecast.forecast.forecastday;
    for (int i = 0; i < 7; i++) {
      if (value.toInt() == i) {
        text = Text(DateFormat.E().format(DateTime.parse(forecastday[i].date)), style: styleForecastWidget);
      }
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    String text;
    List<bool> q = [true,true,true];
    if (value.round() == findMinY.round() && q[0]) {
      text = '${findMinY.round()}°'; q[0] = !q[0];
    }else if (value.toInt() == findMaxY.round() && q[1]) {
      text = '${findMaxY.round()}°'; q[1] = !q[1];
    }else if (value.round() == ((findMaxY.round()+findMinY.round())/2).round() && q[2]) {
      text = '${((findMaxY.round()+findMinY.round())/2).round()}°'; q[2] = !q[2];
    }else {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(text, style: styleForecastWidget2, textAlign: TextAlign.right),
    );
  }

  LineChartData mainData() {
    var forecastday = widget.forecast.forecast.forecastday;
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
      minY: findMinY.round().toDouble()-1,
      maxY: findMaxY.round().toDouble()+1,
      lineBarsData: [
        LineChartBarData(
          spots: [for (int i = 0; i < 7; i++) FlSpot(i.toDouble(),forecastday[i].day.avgtempC)],
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
          spots: [for (double i =0;i<7;i++) FlSpot(i,findMinY.round().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
        ),
        LineChartBarData(
          spots: [for (double i =0;i<7;i++) FlSpot(i,findMaxY.round().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
        ),
        LineChartBarData(
          spots: [for (double i =0;i<7;i++) FlSpot(i,((findMaxY.round().toDouble()+findMinY.round().toDouble())/2).round().toDouble())],
          color: const Color.fromARGB(33, 0, 0, 0),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
        ),
      ],
    );
  }
}