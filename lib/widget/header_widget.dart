import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        const Text(
          "Warmindo Mang Ujo",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ]
    );
  }
}