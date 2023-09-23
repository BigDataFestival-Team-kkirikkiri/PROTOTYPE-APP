import 'package:flutter/material.dart';
import 'package:prototype/widgets/modal_content/danger_rate_modal.dart';

class MoreClickWidget extends StatelessWidget {
  final String content;
  final double fontSize;

  const MoreClickWidget(
      {super.key, required this.content, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white.withOpacity(0),
              context: context,
              builder: (BuildContext context) {
                return const DangerRateModal();
              },
            );
          },
          child: Text(
            content,
            style: TextStyle(fontSize: fontSize, color: Colors.white),
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white.withOpacity(0),
              context: context,
              builder: (BuildContext context) {
                return const DangerRateModal();
              },
            );
          },
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            size: fontSize,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 15)
      ],
    );
  }
}
