import 'package:flutter/material.dart';

class TextCustomized extends StatelessWidget {

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;

  TextCustomized({this.text, this.color, this.fontWeight, this.fontFamily});
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    ),
  );
  }
}