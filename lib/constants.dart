import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Text extends StatelessWidget {
  String? inputText;
  double? myFontSize;
  Color myColor;

  My_Text(
      {required this.inputText,
      required this.myFontSize,
      required this.myColor}) {}

  @override
  Widget build(BuildContext context) {
    return Text(
      "$inputText",
      style: TextStyle(
        color: myColor,
        fontSize: myFontSize,
      ),
    );
  }
}
