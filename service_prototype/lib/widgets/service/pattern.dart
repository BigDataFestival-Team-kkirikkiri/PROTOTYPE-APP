import 'package:flutter/material.dart';

class PatternWidget extends StatelessWidget {
  final String title;
  final double titleSize;
  final String semiTitle;
  final double semiTitleSize;
  final String content1;
  final String content2;
  final double contentSize;

  const PatternWidget(
      {super.key,
      required this.title,
      required this.titleSize,
      required this.semiTitle,
      required this.semiTitleSize,
      required this.content1,
      required this.content2,
      required this.contentSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: titleSize,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    semiTitle,
                    style:
                        TextStyle(color: Colors.white, fontSize: semiTitleSize),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    content1,
                    style:
                        TextStyle(color: Colors.white, fontSize: contentSize),
                  ),
                  Text(
                    content2,
                    style:
                        TextStyle(color: Colors.white, fontSize: contentSize),
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/light_maratoner.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
