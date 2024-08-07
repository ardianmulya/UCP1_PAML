import 'package:flutter/material.dart';
import 'package:ucppaml/page/halaman_pertama.dart';
import 'package:ucppaml/widget/footer_data_widget.dart';

class HalamanKetiga extends StatelessWidget {
  const HalamanKetiga(
      {super.key,
      required this.alamat,
      required this.nama,
      required this.notelp,
      required this.makanan,
      required this.minuman});

  final String nama;
  final String notelp;
  final String alamat;
  final String makanan;
  final String minuman;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pemesanan"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Card(
                color: Colors.blue[400],
                elevation: 4,
                child: SizedBox(
                  height: 135,
                  width: 1250,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama:, $nama',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "No Telpon : $notelp",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Alamat : $alamat",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Makanan : $makanan",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Minuman : $minuman",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterDataWidget(onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => HalamanPertama()));
              }),
            ],
          )
        ],
      ),
    );
  }
}
