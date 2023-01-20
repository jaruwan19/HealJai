import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'my_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Stack(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 200,
                      color: Colors.amber,
                      padding: EdgeInsets.all(35),
                      child: Text(
                        "Have a good day...",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 300,
                    // margin: EdgeInsets.all(50),
                    margin: EdgeInsets.only(top: 80),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    // color: Colors.black,

                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 400,
                          // padding: EdgeInsets.all(50),
                          margin: EdgeInsetsDirectional.only(),

                          child: Card(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: SfCalendar(),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Card(
                              child: Container(
                                width: 162,
                                height: 162,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Card(
                              child: Container(
                                width: 162,
                                height: 162,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 20),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Row(
                      children: [
                        Card(
                            child: Container(
                          width: 330,
                          height: 170,
                        ))
                      ],
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      )
    );
  }
}
