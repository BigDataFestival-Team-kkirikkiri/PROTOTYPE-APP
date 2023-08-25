import 'package:flutter/material.dart';

class titleColorBetweenNoIconNoPadding extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final String title2;
  final double fontSize;

  const titleColorBetweenNoIconNoPadding(
      {super.key,
      required this.title1,
      required this.colorTitle,
      required this.color,
      required this.title2,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title1,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
          Text(
            colorTitle,
            style: TextStyle(
                color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          Text(
            title2,
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
