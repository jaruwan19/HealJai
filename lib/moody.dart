import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'login.dart';
import 'mood.dart';

class Moody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pushNamed("/Login");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return const Login();
              }),
            );
          },
          icon: const Icon(
            Icons.close,
            size: 24,
            color: Colors.brown,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 8),
            alignment: Alignment.topLeft,
              child: GradientText("วันนี้คุณรู้สึก",
                style: const TextStyle(
                  fontSize: 56
                ), 
                colors: const [
                Color.fromARGB(199, 113, 191, 255),
                Color.fromARGB(181, 255, 181, 250),
                ],
              ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 8),
            alignment: Alignment.bottomRight,
            child: GradientText("อย่างไร",
              style: const TextStyle(
                fontSize: 56
              ),
              colors: const [
                Color.fromARGB(181, 255, 181, 250),
                Color.fromARGB(199, 113, 191, 255),
                ],
            ),
          ),

          Expanded(child: 
            Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              
              border: Border.all(
                width: 2, 
                color: Color.fromARGB(199, 113, 191, 255),
              ),
            ),
            child: GridView.count(
            crossAxisCount: 3,mainAxisSpacing: 25, crossAxisSpacing: 15,
            padding: EdgeInsets.only(top: 10),
            children: moods.map((mood) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/login");
                },
                child : Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(199, 113, 191, 255),
                        Color.fromARGB(181, 255, 181, 250),
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(mood.image),
                      ),
                      SizedBox(height: 10),
                      Text(mood.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
            ),
          ),
        ],
      )
    );
  }
}


