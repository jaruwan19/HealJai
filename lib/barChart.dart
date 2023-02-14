import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class barChart extends StatefulWidget {
  State<barChart> createState() => barChartState();
}

class barChartState extends State<barChart> {
  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: DChartBar(
          data: const [
            {
              'id': 'Bar',
              'data': [
                {'domain': 'cat1', 'measure': 10},
                {'domain': 'cat2', 'measure': 8},
                {'domain': 'cat3', 'measure': 5},
                {'domain': 'cat4', 'measure': 7},
                {'domain': 'cat5', 'measure': 4},
                {'domain': 'cat6', 'measure': 3},
                {'domain': 'cat7', 'measure': 2},
              ],
            },
          ],
          domainLabelPaddingToAxisLine: 16,
          axisLineTick: 2,
          axisLinePointTick: 2,
          axisLinePointWidth: 10,
          axisLineColor: Colors.grey.shade300,
          measureLabelPaddingToAxisLine: 16,
          barColor: (barData, index, id) => Color(int.parse("0xff003488")),
          showBarValue: true,
        ),
      ),
    );
  }
}
