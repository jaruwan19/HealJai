import 'package:flutter/material.dart';
import 'package:healjai/index.dart';
import 'package:healjai/splash.dart';

import 'create.dart';
import 'dashboard.dart';
import 'login.dart';
import 'home.dart';
import 'chat.dart';
import 'index.dart';
import 'calendar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //route เป้นเส้นทางที่ใช้ในการเข้าถึงหน้าต่างๆ
      routes: {
        "/": (context) => const Splash(),
        "/login": (context) => const Login(),
        "/create": (context) => const Create(),
        "/home": (context) => const Home(),
        "/chat": (context) => const ChatPage(),
        "/index": (context) => const Index(),
        "/calendar": (context) => const Calendar(),
        "/dashboard": (context) => const Dashboard(),
      },
    ),
  );
}
