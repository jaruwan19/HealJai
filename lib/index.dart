import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/flutter_bottom_navigation.dart';
import 'package:healjai/home.dart';

import 'package:healjai/chat.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ChatPage(),
    Text(
      'Index 2: Moody',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(188, 170, 164, 1),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(188, 170, 164, 1),
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(188, 170, 164, 1),
            icon: Icon(Icons.emoji_emotions),
            label: 'Moody',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(188, 170, 164, 1),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 233, 227, 227),
        onTap: _onItemTapped,
      ),
    );
  }
}
