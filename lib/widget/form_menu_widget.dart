import 'package:flutter/material.dart';

class FormMenuWidget extends StatelessWidget {
  const FormMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Makanan",
                hintText: "Masukkan Makanan Kamu",
                prefixIcon: Icon(Icons.food_bank),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Makanan wajib di isi!";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Minuman",
                hintText: "Masukkan Minuman Kamu",
                prefixIcon: Icon(Icons.local_bar),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Minuman wajib di isi!";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );;
  }
}