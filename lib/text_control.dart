import 'package:flutter/material.dart';

class TextControll extends StatelessWidget {
  final Function onPressFunction;
  TextControll({this.onPressFunction});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.teal,
      elevation: 2,
      child: Text(
        'Lets Change!',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      onPressed: onPressFunction,
    );
  }
}
