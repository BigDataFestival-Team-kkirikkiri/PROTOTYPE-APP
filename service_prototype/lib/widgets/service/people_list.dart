import 'package:flutter/material.dart';
import 'package:prototype/widgets/service/company_danger.dart';

class PeopleList extends StatelessWidget {
  final String rank;
  final String rateOfReturn;
  final String name;
  final String rate;
  final double fontSize;
  final Color iconColor;
  final Color rateColor;
  final Color containerColor;

  const PeopleList({
    super.key,
    required this.rank,
    required this.rateOfReturn,
    required this.name,
    required this.rate,
    required this.fontSize,
    required this.iconColor,
    required this.rateColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 7,
            bottom: 7,
            left: 50,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rank,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "*****",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                rateOfReturn,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold),
              ),
              CompanyDanger(name: name, fontSize: fontSize, color: iconColor),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                    color: containerColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(3)),
                child: Text(rate,
                    style: TextStyle(
                        color: rateColor,
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: Container(
            color: Colors.grey[800],
            height: 2,
          ),
        )
      ],
    );
  }
}
