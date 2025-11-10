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

⚙️ Penjelasan Proses Passing Data
1. Input Data (File: form_data.dart)

Halaman pertama menampilkan form input yang berisi tiga field:

Nama

NIM

Tahun Lahir

Pengguna mengisi form dan menekan tombol “Simpan”.

Data dari TextFormField disimpan dalam tiga variabel controller:

_namaController.text
_nimController.text
_tahunController.text


Setelah tombol Simpan ditekan, aplikasi melakukan validasi dan mengirim data ke halaman berikutnya menggunakan Navigator.push().

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


➡️ Pada tahap ini, data dikirim melalui parameter konstruktor (constructor parameter) ke halaman TampilData.

2. Penerimaan dan Penampilan Data (File: tampil_data.dart)

File tampil_data.dart menerima data dari halaman form melalui parameter yang dikirim dari constructor:

final String nama;
final String nim;
final int tahunLahir;


Data ini diproses untuk menghitung umur:

int umur = DateTime.now().year - tahunLahir;


Lalu ditampilkan di halaman dengan format kalimat yang benar menurut EYD/KBBI:

Nama saya [nama], NIM [nim], dan umur saya adalah [umur] tahun.

3. Alur Passing Data (Diagram Sederhana)
FormData (Input)
     ↓
  Navigator.push()
     ↓
TampilData (Output)


Atau secara teks:

Pengguna mengisi data → menekan tombol Simpan → data dikirim lewat Navigator → diterima oleh konstruktor di TampilData → ditampilkan di layar.

🎨 Desain Antarmuka

AppBar berwarna biru pada kedua halaman (Input Data & Perkenalan)

Background putih bersih

Tombol “Simpan” berwarna biru agar konsisten dengan tema aplikasi

Desain dibuat sederhana, bersih, dan mudah digunakan

🧩 File Penting
main.dart

Menjadi entry point aplikasi.

Mengarahkan ke halaman form pertama (FormData).

ui/form_data.dart

Menyediakan form input untuk Nama, NIM, dan Tahun Lahir.

Melakukan validasi sebelum mengirim data.

Menggunakan Navigator.push() untuk berpindah halaman sambil membawa data.

ui/tampil_data.dart

Menerima data dari form_data.dart melalui konstruktor.

Menghitung umur berdasarkan tahun lahir.

Menampilkan hasil dalam format kalimat yang rapi.

🧠 Kesimpulan

Konsep passing data antar halaman di Flutter dapat dilakukan menggunakan:

Navigator.push() untuk berpindah ke halaman lain.

Parameter konstruktor untuk mengirim data antar widget.

Dengan cara ini, data dari halaman form (FormData) dapat dengan mudah diteruskan dan ditampilkan di halaman hasil (TampilData).
