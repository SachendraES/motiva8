import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:motiva8/models/log_series.dart';

class LogChart extends StatelessWidget {
  final List<LogSeries> data;

  LogChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LogSeries, String>> series = [
      charts.Series(
        id: "log",
        data: data,
        domainFn: (LogSeries series, _) => series.time,
        measureFn: (LogSeries series, _) => series.value,
      )
    ];

    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Container(
          height: 150,
          child: charts.BarChart(
            series,
            animate: true,
            barGroupingType: charts.BarGroupingType.grouped,
            defaultRenderer: new charts.BarRendererConfig(
              cornerStrategy: const charts.ConstCornerStrategy(30),
              maxBarWidthPx: 10,
            ),
          ),
        ));
  }
}
