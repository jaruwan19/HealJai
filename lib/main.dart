import 'package:flutter/material.dart';
import 'package:healjai/splash.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //route เป้นเส้นทางที่ใช้ในการเข้าถึงหน้าต่างๆ
      routes: {
        "/" : (context) => const Splash(),
        // "/login":(context) => const Login(),
        // "/create" :(context) => const Create(),
      },
    ),
  );
}