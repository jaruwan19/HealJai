import 'package:flutter/material.dart';

class ProfileImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      // color: Colors.black,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: 110,
            width: 110,
            // color: Colors.red,
            child: Icon(
              Icons.account_circle,
              size: 130,
              color: Colors.grey[800],
            ),
          ),
          Positioned(
              top: 97,
              right: 1,
              child: Container(
                width: 15,
                height: 15,
                color: Colors.white,
              )),
          Positioned(
              top: 90,
              right: -5,
              child: Icon(
                Icons.add_circle,
                color: Colors.green,
                size: 30,
              ))
        ],
      ),
    );
  }
}
