import 'package:flutter/material.dart';

class FormMenuWidget extends StatefulWidget {
  const FormMenuWidget({super.key, required this.formmenuKey, required this.MakananController, required this.MinumanController});

  final GlobalKey<FormState> formmenuKey;
  final TextEditingController MakananController;
  final TextEditingController MinumanController;

  @override
  State<FormMenuWidget> createState() => _FormMenuWidgetState();
}

class _FormMenuWidgetState extends State<FormMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formmenuKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.MakananController,
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
              controller: widget.MinumanController,
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