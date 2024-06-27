import 'package:flutter/material.dart';

class FooterDataWidget extends StatelessWidget {
  const FooterDataWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text("Selanjutnya"),
        ),
      ],
    );
  }
}
