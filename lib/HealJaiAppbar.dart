// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealJaiAppbar extends AppBar {
  final String appbarText;
  HealJaiAppbar({required this.appbarText});
  State<HealJaiAppbar> createState() => AppbarState();
}

class AppbarState extends State<HealJaiAppbar> {
  @override
  Widget build(context) {
    return AppBar(
      title: Text(widget.appbarText),

      // leading: Icon(Icons.keyboard_arrow_left),
      actionsIconTheme: IconThemeData(color: Colors.white, size: 36),
      backgroundColor: Colors.brown.shade200,
      // actions: const [
      //   Icon(Icons.flash_on),
      //   Padding(padding: EdgeInsets.only(right: 15))
      // ],
    );
  }
}
