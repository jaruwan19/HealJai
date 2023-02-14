import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_bottom_navigation/flutter_bottom_navigation.dart';
import 'package:clean_calendar/clean_calendar.dart';
// import 'package:package_calendar/package_calendar.dart';
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
                      color: Color.fromRGBO(188, 170, 164, 1),
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
                    height: 365,

                    // margin: EdgeInsets.all(50),
                    margin: EdgeInsets.only(top: 80),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    // color: Colors.black,

                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 500,
                            // color: Colors.amber,
                            // padding: EdgeInsets.all(50),
                            margin: EdgeInsetsDirectional.only(),
                            child: Card(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/calendar");
                                  },
                                  // child: SfCalendar(),
                                  // child: CalendarWidget(),
                                  child: CleanCalendar(
                                    enableDenseViewForDates:
                                        true, // <- Set false to allow button boundary to expand.
                                    enableDenseSplashForDates:
                                        false, // <- Set true to minimise tap target.
                                    datesForStreaks: [
                                      DateTime(2022, 8, 5),
                                      DateTime(2022, 8, 6),
                                      DateTime(2022, 8, 7),
                                      DateTime(2022, 8, 9),
                                      DateTime(2022, 8, 10),
                                      DateTime(2022, 8, 11),
                                      DateTime(2022, 8, 13),
                                      DateTime(2022, 8, 20),
                                      DateTime(2022, 8, 21),
                                      DateTime(2022, 8, 23),
                                      DateTime(2022, 8, 24),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                  // width: 162,
                                  // height: 162,
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed("/dashboard");
                                        },
                                        child: const Image(
                                          image: AssetImage(
                                              'assets/images/dashboard_logo.png'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Card(
                              child: Container(
                                // width: 162,
                                // height: 162,
                                child: Column(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .pushNamed("/donut_chart");
                                      },
                                      child: const Image(
                                        image: AssetImage(
                                            'assets/images/donut_chart_logo.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0, bottom: 20),
                    padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Card(
                                child: Container(
                          // width: 330,
                          // height: 170,
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/bar_chart");
                                },
                                child: const Image(
                                  alignment: Alignment.center,
                                  height: 170,
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/images/bar_chart_logo.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )))
                      ],
                    ),
                  ),
                 
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

// class CalendarWidget extends StatefulWidget {
//   @override
//   _CalendarWidgetState createState() => _CalendarWidgetState();
// }

// class _CalendarWidgetState extends State<CalendarWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: PackageCalendar(
//         monthNameWidget: (_, __) => Text(
//           'Custom Month Name',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         dayOfWeekWidget: (_, __) => Text(
//           'Custom Day of Week',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         dayWidget: (_, __, ___) => Text(
//           'Custom Day',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }






// class CalendarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       width: 300,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black),
//       ),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.chevron_left),
//                   onPressed: () {},
//                 ),
//                 Text("January 2023"),
//                 IconButton(
//                   icon: Icon(Icons.chevron_right),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 7,
//               children: List.generate(31, (index) {
//                 return Container(
//                   margin: EdgeInsets.all(2),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Center(
//                     child: Text(
//                       (index + 1).toString(),
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 );
//               }),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
