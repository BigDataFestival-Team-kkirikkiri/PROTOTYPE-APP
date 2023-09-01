import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RankChart extends StatelessWidget {
  const RankChart({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2022, 12), 1),
      ChartData(DateTime(2023, 1), 1),
      ChartData(DateTime(2023, 2), 2),
      ChartData(DateTime(2023, 3), 3),
      ChartData(DateTime(2023, 4), 3),
      ChartData(DateTime(2023, 5), 4),
      ChartData(DateTime(2023, 6), 4),
      ChartData(DateTime(2023, 7), 5),
      ChartData(DateTime(2023, 8), 4),
      ChartData(DateTime(2023, 9), 3),
      ChartData(DateTime(2023, 10), 2),
      ChartData(DateTime(2023, 11), 3),
      ChartData(DateTime(2023, 12), 3),
    ];

    final List<Color> color = <Color>[];
    color.add(Colors.orange[50]!.withOpacity(0.5));
    color.add(Colors.orange[200]!.withOpacity(0.5));
    color.add(Colors.orange.withOpacity(0.5));

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
        LinearGradient(colors: color, stops: stops);

    return Center(
      child: Container(
        child: SfCartesianChart(
          primaryXAxis: DateTimeAxis(
              // minimum: DateTime(2022, 12),
              // maximum: DateTime(2023, 12),
              ),
          margin: const EdgeInsets.all(20),
          tooltipBehavior: TooltipBehavior(enable: true, format: "point.y"),
          series: <ChartSeries<ChartData, DateTime>>[
            AreaSeries<ChartData, DateTime>(
                name: "Rank",
                enableTooltip: true,
                dataSource: chartData,
                gradient: gradientColors,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                markerSettings: const MarkerSettings(isVisible: true))
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}
