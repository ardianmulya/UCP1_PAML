import 'package:flutter/material.dart';

class FormDataWidget extends StatefulWidget {
  const FormDataWidget({super.key});

  @override
  State<FormDataWidget> createState() => _FormDataWidgetState();
}

class _FormDataWidgetState extends State<FormDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama Kamu",
                  prefixIcon: Icon(Icons.person),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  bool valid = RegExp(r'[a-zA-Z]').hasMatch(value!);
                  if (value!.isEmpty) {
                    return "Nama wajib di isi!";
                  } else if (!valid) {
                    return "Nama tidak boleh berisi angka!";
                  } else if (value.length <= 2) {
                    return "Nama Terlalu Pendek!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "No Telepon",
                  hintText: "Masukkan No Telp Kamu",
                  prefixIcon: Icon(Icons.phone),
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                   bool valid = RegExp(r'[0-9]+$').hasMatch(value!);
                  if (value!.isEmpty) {
                    return "No Telepon wajib di isi!";
                  } else if (!valid) {
                    return "No Telepon tidak Valid!";
                  } else if (value.length <= 2) {
                    return "No Telepon Terlalu Pendek!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
