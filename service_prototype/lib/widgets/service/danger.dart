import 'package:flutter/material.dart';

class DangerWidget extends StatelessWidget {
  final Color bgColor;
  final Color entColor;
  final Color stockColor;
  final Color stockRateColor;
  final Color stockRateBgColor;
  final double allfontSize;
  final Color iconColor;
  final String entName;
  final String stockName;
  final String stockRate;
  final double iconSize;

  const DangerWidget({
    super.key,
    required this.bgColor,
    required this.entColor,
    required this.stockColor,
    required this.stockRateColor,
    required this.stockRateBgColor,
    required this.allfontSize,
    required this.iconColor,
    required this.iconSize,
    required this.entName,
    required this.stockName,
    required this.stockRate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  entName,
                  style: TextStyle(
                      fontSize: allfontSize,
                      color: entColor,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.circle, color: iconColor, size: iconSize),
                const SizedBox(width: 15),
                Text(
                  stockName,
                  style: TextStyle(
                    color: stockColor,
                    fontWeight: FontWeight.bold,
                    fontSize: allfontSize,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: stockRateBgColor.withOpacity(0.5),
                  ),
                  child: Text(
                    stockRate,
                    style: TextStyle(
                        color: stockRateColor,
                        fontSize: allfontSize,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(height: 7),
            Container(color: Colors.grey[800], height: 2.5)
          ],
        ),
      ),
    );
  }
}
