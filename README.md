# h1d023009_tugas6

📱 Tugas 6 Flutter – Passing Data antar Halaman
🧾 Deskripsi Proyek

Proyek ini bernama NIM_Tugas6.
Aplikasi Flutter sederhana ini berfungsi untuk menginput data pribadi (Nama, NIM, dan Tahun Lahir), lalu menampilkan hasilnya di halaman lain menggunakan konsep passing data antar halaman (navigation & constructor parameter).

Struktur folder proyek:

lib/
 ├── main.dart
 └── ui/
      ├── form_data.dart
      └── tampil_data.dart


---

## ⚙️ Penjelasan Proses Passing Data

1. **Input Data di Form**
   - Pengguna mengisi *TextField* untuk `nama`, `nim`, dan `tahunLahir` di file `form_data.dart`.

2. **Validasi dan Navigasi**
   - Setelah tombol **Simpan** ditekan dan validasi berhasil, program menavigasi ke halaman berikut menggunakan:
     ```dart
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
     ```
   - Di sini data dikirim melalui *constructor parameter* ke halaman `TampilData`.

3. **Penerimaan Data**
   - File `tampil_data.dart` menerima data melalui parameter:
     ```dart
     final String nama;
     final String nim;
     final int tahunLahir;
     ```
   - Data digunakan untuk menghitung umur dan ditampilkan di layar.

4. **Hasil Akhir**
   - Halaman kedua menampilkan teks seperti:
     ```
     Nama saya Stephen Prasetya Chrismaswan, NIM H1D021025, dan umur saya adalah 19 tahun.
     ```

---

## 💡 Catatan
- Gunakan `MaterialApp` untuk navigasi antar halaman.
- Passing data dilakukan menggunakan **constructor** dan **Navigator.push**.
- Desain dapat dimodifikasi agar lebih menarik menggunakan `Card`, `Container`, atau `TextStyle`.

---

## 🖼️ Screenshot


