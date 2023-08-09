import 'package:bar_chart/bar_graph/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
      sunAmmount: weeklySummary[0],
      monAmmount: weeklySummary[1],
      tueAmmount: weeklySummary[2],
      wedAmmount: weeklySummary[3],
      thurAmmount: weeklySummary[4],
      friAmmount: weeklySummary[5],
      satAmmount: weeklySummary[6],
    );
    myBarData.fillBarData();
    return BarChart(
      BarChartData(
          minY: 0,
          maxY: 30,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: getBottomTitles)),
          ),
          barGroups: myBarData.barData
              .map(
                (data) => BarChartGroupData(
                  x: data.x,
                  barRods: [
                    (BarChartRodData(
                        toY: data.y.toDouble(),
                        color: Colors.green,
                        width: 20,
                        backDrawRodData: BackgroundBarChartRodData(
                            show: true,
                            toY: 30,
                            color: Colors.green.shade200))),
                  ],
                ),
              )
              .toList()),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text('S', style: style);
      break;
    case 1:
      text = const Text('M', style: style);
      break;
    case 2:
      text = const Text('T', style: style);
      break;
    case 3:
      text = const Text('W', style: style);
      break;
    case 4:
      text = const Text('T', style: style);
      break;
    case 5:
      text = const Text('F', style: style);
      break;
    case 6:
      text = const Text('S', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
