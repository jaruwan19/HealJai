// import 'package:group_radio_button/group_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';
import "HealJaiAppbar.dart";

class DonutChartPage extends StatefulWidget {
  DonutChartPage({super.key});

  State<DonutChartPage> createState() => DonutChartPageState();
}

class DonutChartPageState extends State<DonutChartPage> {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: HealJaiAppbar(appbarText: 'line chart'),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: AspectRatio(
                aspectRatio: 10 / 9,
                child: Stack(
                  children: [
                    DChartPie(
                      data: [
                        {'domain': 'Flutter', 'measure': 60},
                        {'domain': 'React Native', 'measure': 40},
                      ],
                      // strokeWidth: 20,
                      fillColor: (pieData, index) {
                        switch (pieData['domain']) {
                          case 'Flutter':
                            return Color(int.parse("0xff1E1E1E"));
                          case 'React Native':
                            return Color(int.parse("0xff25FBAE"));
                        }
                      },
                      donutWidth: 60,
                      labelColor: Colors.white,
                      labelFontSize: 16,
                    ),
                    Align(child: Text('Activities')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(int.parse("0xFF25FBAE")),
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Series1",
                  style: TextStyle(color: Color(int.parse("0xFF8d9092"))),
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color(int.parse("0xff1E1E1E")),
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Series2",
                  style: TextStyle(color: Color(int.parse("0xFF8d9092"))),
                )
              ],
            )
          ],
        )));
  }
}
