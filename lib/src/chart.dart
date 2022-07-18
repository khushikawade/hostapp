import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle = TextStyle(fontSize: 10, color: Color(0xFFA1A1A1));

    return Container(
      decoration: BoxDecoration(color: Color(0xffffffff)),
      child: SizedBox(
        width: 360,
        height: 150,
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(enabled: false),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 1),
                  FlSpot(1, 1),
                  FlSpot(2, 3),
                  FlSpot(3, 4),
                  FlSpot(3, 5),
                  FlSpot(4, 4)
                ],
                // isCurved: true,
                // barWidth: 2,
                // colors: [
                //   Colors.black,
                // ],
                // belowBarData: BarAreaData(
                //   show: true,
                //   colors: [Colors.lightBlue.withOpacity(0.5)],
                //   cutOffY: cutOffYValue,
                //   applyCutOffY: true,
                // ),
                // aboveBarData: BarAreaData(
                //   show: true,
                //   colors: [Colors.lightGreen.withOpacity(0.5)],
                //   cutOffY: cutOffYValue,
                //   applyCutOffY: true,
                // ),
                dotData: FlDotData(
                  show: false,
                ),
              ),
            ],
            minY: 0,
            titlesData: FlTitlesData(
              bottomTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 9,
                  textStyle: yearTextStyle,
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Vehical 1';
                      case 1:
                        return 'Vehical 2';
                      case 2:
                        return 'Vehical 3';
                      case 3:
                        return 'Vehical 4';
                      case 4:
                        return 'Vehical 5';
                      default:
                        return '';
                    }
                  }),
              leftTitles: SideTitles(
                showTitles: true,
                getTitles: (value) {
                  return ' ${value + 50}';
                },
              ),
            ),
            axisTitleData: FlAxisTitleData(
                leftTitle:
                    AxisTitle(showTitle: true, titleText: '', margin: 10),
                bottomTitle: AxisTitle(
                    showTitle: true,
                    margin: 10,
                    titleText: '',
                    textStyle: yearTextStyle,
                    textAlign: TextAlign.right)),
            gridData: FlGridData(
              show: true,
              checkToShowHorizontalLine: (double value) {
                return value == 1 || value == 2 || value == 3 || value == 4;
              },
            ),
          ),
        ),
      ),
    );
  }
}
