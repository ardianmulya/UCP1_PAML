import 'package:flutter/material.dart';

class FormDataWidget extends StatefulWidget {
  const FormDataWidget(
      {super.key,
      required this.formKey,
      required this.NamaControoller,
      required this.NotelpController,
      required this.AlamatController});

  final GlobalKey<FormState> formKey;
  final TextEditingController NamaControoller;
  final TextEditingController NotelpController;
  final TextEditingController AlamatController;

  @override
  State<FormDataWidget> createState() => _FormDataWidgetState();
}

List<String> radioList = ["Laki-laki", "Perempuan"];

class _FormDataWidgetState extends State<FormDataWidget> {
   String currentOption = radioList[0];
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: widget.NamaControoller,
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
              controller: widget.NotelpController,
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
            TextFormField(
              keyboardType: TextInputType.multiline,
              controller: widget.AlamatController,
              decoration: const InputDecoration(
                labelText: "Alamat",
                hintText: "Masukkan Alamat Kamu",
                prefixIcon: Icon(Icons.person),
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Alamat wajib di isi!";
                } else if (value.length <= 2) {
                  return "Alamat Terlalu Pendek!";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Masukan Jenis Kelamin",
              style: TextStyle(fontSize: 15),
            ),
            ListTile(
              title: Text('Laki-Laki'),
              leading: Radio(
                value: radioList[0],
                groupValue: currentOption,
                onChanged: (value) {
                  setState(() {
                    currentOption = value.toString();
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Perempuan'),
              leading: Radio(
                  value: radioList[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
