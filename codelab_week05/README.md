<p align="center">
  <img src="https://3.bp.blogspot.com/-whSxEvHuEds/VOBUC7I5NNI/AAAAAAAAAUY/qfk23ch5o_c/s1600/logo_polinema_by_adminkerapolinema-d3b0ojd.jpg" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 05</h2>
<h3 align="center">Aplikasi Pertama dan Widget Dasar Flutter</h3>

---

<div align="center">

### **Dosen Pembimbing**
**Habibie Ed Dien, S.Kom., M.T.**

---

### **Disusun oleh**
**Nama**  : Cakra Wangsa M.A.W
**NIM**   : 2341720032
**Kelas** : TI-3G
**Program Studi** : D-4 Teknik Informatika

---

### **Alamat Kampus**
Politeknik Negeri Malang
Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141
**Phone** : (0341) 404424, 404425
**Email** : [Polinema.ac.id](https://www.polinema.ac.id)

</div>

---

# Praktikum Mobile Programming - Week 05

## Praktikum 1: Membuat Project Flutter Baru

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code), Android Studio, atau code editor lain kesukaan Anda.

### Langkah 4
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut.  
Pesan akan tampil berupa **"Your Flutter Project is ready!"** yang artinya Anda telah berhasil membuat project Flutter baru.

![Langkah 4](img/praktikum1_langkah4_week05mobile.jpg.png)

---

## Praktikum 2: Menghubungkan Perangkat Android atau Emulator

Melanjutkan dari praktikum 1, Anda diminta untuk menjalankan aplikasi ke perangkat fisik (device Android atau iOS).  
Silakan ikuti langkah-langkah pada codelab berikut:

[Basic Android Kotlin Compose - Connect Device](https://developer.android.com/codelabs/basic-android-kotlin-compose-connect-device?hl=id#0)

---

## Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum

Melanjutkan dari praktikum 2, silakan selesaikan langkah-langkah berikut ini.

> **Perhatian:** Diasumsikan Anda telah mempunyai akun GitHub dan Anda telah memahami konsep dasar dalam bekerja menggunakan Git pada pertemuan pertama.

Praktikum ini dapat Anda lewati langsung ke **Langkah 11** jika sudah paham cara membuat laporan praktikum sesuai style yang Anda pilih.

### Langkah 11
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator, device, atau browser Chrome.  
Lalu coba jalankan project `hello_world` dengan menekan **F5** atau melalui menu **Run > Start Debugging**.  
Tunggu proses kompilasi hingga selesai, maka aplikasi Flutter pertama Anda akan tampil seperti berikut.

![Run Flutter](img/praktikum3_langkah11_week05mobile.jpg)

> **Perhatian:** Proses Run atau kompilasi untuk pertama kali akan memakan waktu cukup lama (3-5 menit).  
> Proses kompilasi berikutnya akan lebih cepat.  
> Berbeda ketika melakukan kompilasi ke device, proses ini akan memakan waktu lebih lama.

### Langkah 12
Silakan lakukan screenshot seperti pada Langkah 11, namun teks yang ditampilkan dalam aplikasi berupa **nama lengkap Anda**.  
Simpan file screenshot dengan nama **01.png** pada folder `images` (buat folder baru jika belum ada) di project `hello_world`.  

Lalu ubah isi `README.md` seperti berikut agar menampilkan hasil screenshot pada file `README.md`.  
Kemudian lakukan **push** ke repository Anda.

![Hello World](img/praktikum3_langkah12_week05mobile.jpg.png)

> **Perhatian:** Lakukan proses screenshot seperti pada Langkah 12 untuk setiap Laporan Praktikum yang akan Anda buat pada praktikum selanjutnya hingga pertemuan project final.

---

# Praktikum 4: Menerapkan Widget Dasar

## Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

---

### Langkah 1: Text Widget

Buat folder baru `basic_widgets` di dalam folder `lib`.
Kemudian buat file baru di dalam `basic_widgets` dengan nama `text_widget.dart`.
Ketik atau salin kode program berikut ke project `hello_world` Anda pada file `text_widget.dart`.

> **Perhatian:** Gantilah teks **Fulan** dengan **nama lengkap Anda**.

#### Kode Program

```dart
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Cakra Wangsa M.A.W, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}
```

#### Output

![menampilkan tulisan default](img/praktikum4_langkah1_week05mobile.jpg.png)

---

### Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

#### Kode Program

```dart
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/Logo-Politeknik-Negeri-Malang.png"),
      width: 400,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}
```
---

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

```dart
flutter:
  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  assets:
    - assets/
```
---

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

#### Output

![menampilkan logo polinema](img/praktikum4_langkah2_week05mobile.jpg.png)