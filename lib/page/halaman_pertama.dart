import 'package:flutter/material.dart';
import 'package:ucppaml/page/halaman_kedua.dart';
import 'package:ucppaml/widget/footer_data_widget.dart';
import 'package:ucppaml/widget/form_data_widget.dart';
import 'package:ucppaml/widget/header_data_widget.dart';

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: ListView(
        children: [
          HeaderDataWidget(),
          FormDataWidget(
              formKey: formKey,
              NamaControoller: nama,
              NotelpController: notelp,
              AlamatController: alamat),
          FooterDataWidget(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HalamanKedua(
                        nama: nama.text,
                        notelp: notelp.text,
                        alamat: alamat.text,
                      ),
                    ),
                    (route) => false);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Berhasil")));
              }
            },
          ),
        ],
      ),
    );
  }
}
