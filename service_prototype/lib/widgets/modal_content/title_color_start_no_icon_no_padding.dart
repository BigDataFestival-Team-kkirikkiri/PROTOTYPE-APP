import 'package:flutter/material.dart';

class TitleColorStartNoIconNoPadding extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final double fontSize;

  const TitleColorStartNoIconNoPadding(
      {super.key,
      required this.title1,
      required this.colorTitle,
      required this.color,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            colorTitle,
            style: TextStyle(
                color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          Text(
            title1,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
