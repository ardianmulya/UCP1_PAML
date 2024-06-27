import 'package:flutter/material.dart';

class HeaderMenuWidget extends StatelessWidget {
  const HeaderMenuWidget({super.key, required this.nama, required this.notelp, required this.alamat});

  final String nama;
  final String notelp;
  final String alamat;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        child: SizedBox(
          height: 140,
          width: 1250,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selamat Datang, $nama',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Text(
                  "No Telpon : $notelp",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Alamat : $alamat",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Tulis Pesanananmu Disini",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
