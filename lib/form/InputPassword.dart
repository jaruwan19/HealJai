import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool passenable = true;
  bool showPass = true;
  @override
  Widget build(context) {
    return SizedBox(
      height: 50,
      child: TextField(
        // textAlignVertical: TextAlignVertical.top,
        obscureText: showPass,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
          suffix: IconButton(
              iconSize: 20,
              padding: EdgeInsets.only(top: 0),
              onPressed: () {
                setState(() {
                  passenable = !passenable;
                  showPass = !showPass;
                });
              },
              icon: Icon(passenable == true
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined)),
          hintText: 'password',
        ),
      ),
    );
  }
}
