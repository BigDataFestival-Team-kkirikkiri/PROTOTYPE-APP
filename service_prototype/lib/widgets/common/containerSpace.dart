import 'package:flutter/material.dart';

class ContainerSpace extends StatelessWidget {
  final double spaceHeight;

  const ContainerSpace({super.key, required this.spaceHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        color: Colors.grey[800],
        height: spaceHeight,
      ),
    );
  }
}
