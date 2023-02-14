import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
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
        "/dashboard": (context) => const Dashboard(),
        "/home": (context) => const Home(),
        "/chat": (context) => const ChatPage(),
        "/index": (context) => const Index(),
        "/canlendar": (context) => const Calendar(),
      },
    ),
  );
}
