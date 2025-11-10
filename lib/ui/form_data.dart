import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({super.key});

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Data',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Nama"),
              TextFormField(
                controller: _namaController,
                decoration: const InputDecoration(
                  hintText: "Masukkan Nama Lengkap",
                ),
                validator: (value) =>
                value!.isEmpty ? "Nama tidak boleh kosong" : null,
              ),
              const SizedBox(height: 20),
              const Text("NIM"),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(
                  hintText: "Masukkan NIM",
                ),
                validator: (value) =>
                value!.isEmpty ? "NIM tidak boleh kosong" : null,
              ),
              const SizedBox(height: 20),
              const Text("Tahun Lahir"),
              TextFormField(
                controller: _tahunController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Masukkan Tahun Lahir (contoh: 2004)",
                ),
                validator: (value) =>
                value!.isEmpty ? "Tahun lahir tidak boleh kosong" : null,
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TampilData(
                            nama: _namaController.text,
                            nim: _nimController.text,
                            tahunLahir: int.parse(_tahunController.text),
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "Simpan",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
