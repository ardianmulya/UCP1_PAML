import 'package:flutter/material.dart';
import 'package:ucppaml/widget/form_menu_widget.dart';
import 'package:ucppaml/widget/header_menu_widget.dart';

class HalamanKedua extends StatelessWidget {
  const HalamanKedua(
      {super.key,
      required this.nama,
      required this.notelp,
      required this.alamat});

  final String nama;
  final String notelp;
  final String alamat;
  @override
  Widget build(BuildContext context) {
    var formmenuKey = GlobalKey<FormState>();
    var namaMakanan = TextEditingController();
    var namaMinuman = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HeaderMenuWidget(nama: nama, notelp: notelp, alamat: alamat),
            FormMenuWidget(formmenuKey: formmenuKey, MakananController: namaMakanan, MinumanController: namaMinuman),
          ],
        ),
      ),
    );
  }
}
