import 'package:flutter/material.dart';
import 'package:prototype/widgets/modal_content/rank_modal.dart';

class rankTitle extends StatelessWidget {
  final String title1;
  final String colorTitle;
  final Color color;
  final double fontSize;

  const rankTitle(
      {super.key,
      required this.title1,
      required this.fontSize,
      required this.colorTitle,
      required this.color});

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
            Text(colorTitle,
                style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return const rankModal();
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
