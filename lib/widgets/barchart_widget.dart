import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:motiva8/models/log_series.dart';
import 'package:motiva8/widgets/log_chart.dart';

class Barchart extends StatelessWidget {
  final List<LogSeries> data = [
    LogSeries(
      time: "9.00",
      value: 78,
    ),
    LogSeries(
      time: "10.30",
      value: 75,
    ),
    LogSeries(
      time: "2.00",
      value: 50,
    ),
    LogSeries(
      time: "6.00",
      value: 60,
    ),
    LogSeries(
      time: "7.00",
      value: 75,
    ),
    LogSeries(
      time: "8.00",
      value: 80,
    ),
    LogSeries(
      time: "9.00",
      value: 75,
    ),
    LogSeries(
      time: "10.00",
      value: 60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(child: LogChart(data: data));
  }
}
