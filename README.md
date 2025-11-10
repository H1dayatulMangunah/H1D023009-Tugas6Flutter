# IDENTITAS

**Nama: Hidayatul Mangunah**  
**NIM: H1D023009**  
**Shift KRS: F**  
**Shift Baru: E**


# 📱 Tugas 6 Flutter – Passing Data dari Form ke Tampilan

## 🧾 Deskripsi

Proyek ini bernama **`NIM_Tugas6`**.
Aplikasi ini dibuat menggunakan Flutter dan memiliki dua halaman utama:

1. Halaman **Input Data** untuk mengisi nama, NIM, dan tahun lahir.
2. Halaman **Perkenalan** untuk menampilkan hasil input data dari halaman sebelumnya.

Tujuan utama proyek ini adalah **memahami proses passing data (pengiriman data)** dari satu halaman ke halaman lain menggunakan `Navigator.push()` dan *constructor parameter*.


## 📂 Struktur Folder

```
lib/
 ├── main.dart
 └── ui/
      ├── form_data.dart
      └── tampil_data.dart
```



## ⚙️ Penjelasan Proses Passing Data dari Form Menuju Tampilan

### 1️⃣ Pengguna Mengisi Data di Halaman Form

File: `ui/form_data.dart`

* Terdapat tiga `TextFormField` untuk input:

  * Nama
  * NIM
  * Tahun lahir
* Masing-masing field dikontrol oleh `TextEditingController`:

  ```dart
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunController = TextEditingController();
  ```

### 2️⃣ Validasi dan Pengiriman Data

* Saat tombol **Simpan** ditekan, aplikasi akan melakukan validasi (`_formKey.currentState!.validate()`).
* Jika validasi berhasil, data dikirim ke halaman lain menggunakan:

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

➡️ Pada baris di atas, data dari tiga `TextEditingController` dikirim ke halaman `TampilData` **melalui parameter konstruktor**.

---

### 3️⃣ Halaman Kedua Menerima Data

File: `ui/tampil_data.dart`

* Halaman ini menerima data lewat parameter konstruktor:

  ```dart
  final String nama;
  final String nim;
  final int tahunLahir;
  ```
* Data kemudian diolah untuk menghitung umur:

  ```dart
  int umur = DateTime.now().year - tahunLahir;
  ```
* Hasilnya ditampilkan ke layar dalam bentuk teks:

  ```
  Nama saya Stephen Prasetya Chrismaswan, NIM H1D021025, dan umur saya adalah 19 tahun.
  ```

---

### 4️⃣ Alur Proses Passing Data

```
User Input (FormData)
   ↓
Validasi Data
   ↓
Navigator.push()
   ↓
Halaman TampilData menerima data
   ↓
Menampilkan hasil input
```

---

## 🧠 Konsep yang Digunakan

| Konsep Flutter            | Penjelasan                                                                    |
| ------------------------- | ----------------------------------------------------------------------------- |
| **StatefulWidget**        | Digunakan di `FormData` untuk menangani input dan perubahan state.            |
| **Navigator.push()**      | Berfungsi untuk berpindah ke halaman baru sambil membawa data.                |
| **Constructor Parameter** | Cara Flutter menerima data dari halaman sebelumnya.                           |
| **StatelessWidget**       | Digunakan di `TampilData` karena hanya menampilkan data tanpa mengubah state. |

---

## 🎨 Tampilan Aplikasi

### 🖊️ Halaman Input Data

Menampilkan form untuk mengisi:

* Nama
* NIM
* Tahun lahir
  dan tombol **Simpan**.

### 👋 Halaman Perkenalan

Menampilkan hasil dari data yang dimasukkan:

> Nama saya Hidayatul Mangunah, NIM H1D023009, dan umur saya adalah 20 tahun.

---

## 💡 Kesimpulan

Proses **passing data antar halaman di Flutter** dilakukan melalui:

1. **Mengambil data dari controller** pada halaman input.
2. **Mengirim data menggunakan `Navigator.push()`** dengan parameter konstruktor.
3. **Menerima dan menampilkan data** di halaman tujuan (`TampilData`).

Dengan mekanisme ini, Flutter memungkinkan pertukaran data yang mudah antar halaman tanpa perlu penyimpanan global atau database.


# 📸 Dokumentasi
![Tampilan aplikasi](Assets/Tugas6.Gif.mp4)
