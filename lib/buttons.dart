import 'package:flutter/material.dart';
import 'package:loginservice1/constants.dart';

class Buttons extends StatelessWidget {
  final double buttonSizeHorizontal, buttonSizeVertical, buttonTextFontSize;
  Color buttonColor, buttonTextColor;
  final String buttonText;

  Buttons(
      {required this.buttonSizeHorizontal,
      required this.buttonSizeVertical,
      required this.buttonColor,
      required this.buttonText,
      required this.buttonTextColor,
      required this.buttonTextFontSize});

  @override
  Widget build(BuildContext context) {
    My_Text cababa; //İnheritance kullandım.

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: buttonSizeVertical,
        horizontal: buttonSizeHorizontal,
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: cababa = new My_Text(
        myColor: buttonTextColor,
        inputText: buttonText,
        myFontSize: buttonTextFontSize,
      ),
    );
  }
}
