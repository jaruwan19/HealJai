import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  List<String> dropdownList = [];
  Dropdown({super.key, required this.dropdownList});
  @override
  State<Dropdown> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<Dropdown> {
  String valueDropdown = "choose..";
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          // color: Colors.lightGreen, //background color of dropdown button
          border: Border.all(
            color: Colors.black38,
          ), //border of dropdown button
          borderRadius:
              BorderRadius.circular(15), //border raiuds of dropdown button
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //       color: Color.fromRGBO(0, 0, 0, 0.57),
          //       blurRadius: 5)
          // ]
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: DropdownButton(
              value: valueDropdown,
              items: widget.dropdownList
                  .map((e) => DropdownMenuItem(
                        child: Text(
                          e,
                          style: TextStyle(color: Colors.black),
                        ),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  valueDropdown = value!;
                });
                //get value when changed
                print("You have selected $value");
              },
              icon: Padding(
                  //Icon at tail, arrow bottom is default icon
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.keyboard_arrow_down)),
              iconEnabledColor: Colors.grey, //Icon color
              style: TextStyle(
                //te
                color: Colors.grey, //Font color
                // fontSize: 20 //font size on dropdown button
              ),

              // dropdownColor: Colors.redAccent,
              underline: Container(), //remove underline
              isExpanded: true, //make true to make width 100%
            )));
  }
}
