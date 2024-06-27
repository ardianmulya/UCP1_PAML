import 'package:flutter/material.dart';
import 'package:ucppaml/widget/header_data_widget.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderDataWidget(),
        ],
      ),
    );
  }
}
