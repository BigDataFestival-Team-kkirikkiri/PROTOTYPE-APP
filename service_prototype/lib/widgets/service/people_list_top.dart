import 'package:flutter/material.dart';

class PeopleListTop extends StatelessWidget {
  final double fontSize;

  const PeopleListTop({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 7,
        left: 15,
        right: 15,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: Colors.grey[850],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "순위(백분위)",
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            Text(
              "사용자",
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            Text(
              "수익률",
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            Text(
              "최근 매수 종목명",
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
            Text(
              "등락률",
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
