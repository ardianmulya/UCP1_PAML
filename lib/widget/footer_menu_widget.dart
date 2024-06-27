import 'package:flutter/material.dart';

class FooterMenuWidget extends StatelessWidget {
  const FooterMenuWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text("Selanjutnya"),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}