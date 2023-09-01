import 'package:flutter/material.dart';
import 'package:prototype/widgets/modal_content/algorithm_modal.dart';

class QuizTitle extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final double fontSize;

  const QuizTitle(
      {super.key,
      required this.title1,
      required this.fontSize,
      required this.colorTitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Container(
        color: Colors.grey[800],
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
            Text(colorTitle,
                style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.white.withOpacity(0),
                  context: context,
                  builder: (BuildContext context) {
                    return const Wrap(
                      children: [AlgorithmModal()],
                    );
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
