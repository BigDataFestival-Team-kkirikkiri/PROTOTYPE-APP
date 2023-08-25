import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class rankChart extends StatelessWidget {
  const rankChart({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData("Jan", 1),
      ChartData("Feb", 2),
      ChartData("Mar", 3),
      ChartData("Apr", 4),
      ChartData("May", 5),
      ChartData("Jun", 3),
      ChartData("July", 2),
      ChartData("Aug", 5),
      ChartData("Oct", 4),
      ChartData("Nov", 2),
      ChartData("Dec", 1),
    ];

    return Scaffold(
      body: Center(
        child: Container(
          child: SfCartesianChart(
            series: <ChartSeries>[
              AreaSeries<ChartData, String>(
                  dataSource: chartData,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y)
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
