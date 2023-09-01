import 'package:flutter/material.dart';
import 'package:prototype/widgets/modal_content/pattern_modal.dart';

class PatternTitle extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final String title2;
  final double fontSize;

  const PatternTitle(
      {super.key,
      required this.title1,
      required this.color,
      required this.colorTitle,
      required this.title2,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Container(
        color: Colors.black,
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
                  color: color,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title2,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white.withOpacity(0),
                  context: context,
                  builder: (BuildContext context) {
                    return const PatternModal();
                  },
                );
              },
              child: Icon(Icons.add_circle_outline,
                  size: fontSize, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
