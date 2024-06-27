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
        const SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://ugc.production.linktr.ee/4055b2bd-17b1-4ed5-aff9-9de4e98d6556_Logo-Warmindo-Mang-Ujo-1.0.png",
          ),
          radius: 70,
        )
      ]
    );
  }
}