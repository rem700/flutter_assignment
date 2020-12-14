import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String textChange;
  final Color textColor;

  TextWidget({this.textChange, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      textChange,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
