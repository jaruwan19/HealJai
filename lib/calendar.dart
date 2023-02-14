import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/flutter_bottom_navigation.dart';
import 'package:clean_calendar/clean_calendar.dart';

import 'package:healjai/home.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        backgroundColor: Color.fromRGBO(188, 170, 164, 1),
      ),
      body: Center(
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/calendar");
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
    );
  }
}
