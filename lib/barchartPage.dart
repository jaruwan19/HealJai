import 'package:group_radio_button/group_radio_button.dart';
import 'package:flutter/material.dart';
import 'barChart.dart';
import 'HealJaiAppbar.dart';

class BarchartPage extends StatefulWidget {
  BarchartPage({super.key});
  State<BarchartPage> createState() => BarchartPageState();
}

class BarchartPageState extends State<BarchartPage> {
  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  final _status = ["chart1", "chart2", "chart3", "chart4"];

  @override
  Widget build(constext) {
    return Scaffold(
        appBar: HealJaiAppbar(appbarText: 'bar chart'),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: barChart(),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 35,
                left: 45,
              ),
              child: RadioGroup<String>.builder(
                  groupValue: _verticalGroupValue,
                  onChanged: (value) => setState(() {
                        _verticalGroupValue = value ?? '';
                      }),
                  items: _status,
                  textStyle: TextStyle(color: Colors.grey),
                  itemBuilder: (item) => RadioButtonBuilder(
                        item,
                      ),
                  fillColor: Color(int.parse("0xff003488"))),
            ),
          ],
        )));
  }
}
