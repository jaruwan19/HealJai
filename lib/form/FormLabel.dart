import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String label;
  final double fontsize;

  FormLabel({required this.label, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontsize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
