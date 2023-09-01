import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  final double spaceHeight;
  final double spaceWidth;

  const SpaceWidget(
      {super.key, required this.spaceHeight, required this.spaceWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spaceHeight,
      width: spaceWidth,
    );
  }
}
