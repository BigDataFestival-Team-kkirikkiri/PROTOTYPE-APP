import 'package:flutter/material.dart';

class newTextWidget extends StatelessWidget {
  final String title;
  final double fontSize;

  const newTextWidget({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
      child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
