import 'package:flutter/material.dart';
import 'package:ucppaml/page/halaman_kedua.dart';
import 'package:ucppaml/page/halaman_ketiga.dart';
import 'package:ucppaml/page/halaman_pertama.dart';
import 'package:ucppaml/widget/form_data_widget.dart';
import 'package:ucppaml/widget/form_menu_widget.dart';
import 'package:ucppaml/widget/header_data_widget.dart';
import 'package:ucppaml/widget/header_menu_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HalamanPertama(),
    );
  }
}