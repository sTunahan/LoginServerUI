import 'package:flutter/material.dart';

class UserInformation extends StatelessWidget {
  String? text;
  UserInformation({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "$text",
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
