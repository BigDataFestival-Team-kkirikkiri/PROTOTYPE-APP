import 'package:flutter/material.dart';

class ModalWidget extends StatelessWidget {
  const ModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200),
                  ),
                ),
                child: const Text("오잉이게되네"));
          },
        );
      },
      child: const Icon(Icons.circle, size: 30, color: Colors.white),
    );
  }
}
