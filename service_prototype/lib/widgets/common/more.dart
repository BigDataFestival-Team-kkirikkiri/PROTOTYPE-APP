import 'package:flutter/material.dart';

class moreWidget extends StatelessWidget {
  final String content;
  final double fontSize;

  const moreWidget({super.key, required this.content, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          content,
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          size: fontSize,
          color: Colors.white,
        )
      ],
    );
  }
}
