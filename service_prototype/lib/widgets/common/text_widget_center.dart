import 'package:flutter/material.dart';

class TextWidgetCenter extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const TextWidgetCenter(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: TextStyle(
            color: textColor, fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
