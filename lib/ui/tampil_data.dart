import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahunLahir;

  const TampilData({
    super.key,
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  });

  @override
  Widget build(BuildContext context) {
    int umur = DateTime.now().year - tahunLahir;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perkenalan',
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
        child: Text(
          "Nama saya $nama, NIM $nim, dan umur saya adalah $umur tahun.",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
            height: 1.5,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
