import 'package:flutter/material.dart';
import 'package:prototype/widgets/service/company_danger.dart';

class peopleListMe extends StatelessWidget {
  final String rank;
  final String rateOfReturn;
  final String name;
  final String rate;
  final double fontSize;
  final Color iconColor;
  final Color rateColor;
  final Color containerColor;

  const peopleListMe({
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 17),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(2)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                "Me",
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
              companyDanger(name: name, fontSize: fontSize, color: iconColor),
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
      ),
    );
  }
}
