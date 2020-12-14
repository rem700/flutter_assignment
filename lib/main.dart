import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'dart:math' as math;

import 'package:flutter_assignment/text_control.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var textChange = 'This is test for change';
  Color textColor = Colors.white;

  void onPressFunction() {
    setState(() {
      textColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Test app'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child:
                      TextWidget(textChange: textChange, textColor: textColor),
                ),
                TextControll(
                  onPressFunction: onPressFunction,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
