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
               ),
            ],
          ),
        ),
      ),
    );
  }
}
