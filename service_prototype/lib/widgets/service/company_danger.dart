import 'package:flutter/material.dart';

class CompanyDanger extends StatelessWidget {
  final String name;
  final double fontSize;
  final Color color;

  const CompanyDanger(
      {super.key,
      required this.name,
      required this.fontSize,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 3),
        Icon(Icons.circle, color: color, size: fontSize)
      ],
    );
  }
}
