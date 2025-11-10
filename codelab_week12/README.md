<p align="center">
  <img src="https://dianisa.com/wp-content/uploads/2024/05/Logo-Politeknik-Negeri-Malang-Dianisa.com_.png" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 12</h2>
<h3 align="center">Lanjutan State Management dengan Streams</h3>

---

<div align="center">

### **Dosen Pembimbing**

**Habibie Ed Dien, S.Kom., M.T.**

---

### **Disusun oleh**

**Nama** : Cakra Wangsa M.A.W

**NIM** : 2341720032

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

# Praktikum 1: Dart Streams

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda (ketik di README.md) pada setiap soal yang ada di beberapa langkah praktikum ini.

# Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama stream_nama (beri nama panggilan Anda) di folder week-12/src/ repository GitHub Anda.

# Langkah 2: Buka file main.dart

Ketiklah kode seperti berikut ini.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}
```

```dart
class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

## Soal 1

Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Cakra Wangsa',
```

Gantilah warna tema aplikasi sesuai kesukaan Anda.
Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

```dart
primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.pink,
          tertiary: Colors.orange,
```

# Langkah 3: Buat file baru stream.dart

Buat file baru di folder lib project Anda. Lalu isi dengan kode berikut.

```dart
import 'package:flutter/material.dart';

class ColorStream {

}
```

# Langkah 4: Tambah variabel colors

Tambahkan variabel di dalam class ColorStream seperti berikut.

```dart
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];
```

## Soal 2

### Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

```dart
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // Soal 2: Menambahkan warna sesuai keinginan
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.indigo,
  ];
```

### Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

# Langkah 5: Tambah method getColors()

Di dalam class ColorStream ketik method seperti kode berikut. Perhatikan tanda bintang di akhir keyword async\* (ini digunakan untuk melakukan Stream data)

```dart
Stream<Color> getColors() async* {
}
```

# Langkah 6: Tambah perintah yield\*

Tambahkan kode berikut ini.

```dart
yield* Stream.periodic(
  const Duration(seconds: 1), (int t) {
    int index = t % colors.length;
    return colors[index];
});
```

## Soal 3

### Jelaskan fungsi keyword yield\* pada kode tersebut!

Jawab: yield* digunakan untuk mengalirkan (delegate) seluruh nilai dari Stream lain ke dalam Stream yang sedang dibuat. Berbeda dengan yield yang mengirimkan satu nilai, yield* mengirimkan semua nilai dari Stream secara berurutan.

### Apa maksud isi perintah kode tersebut?

Jawab: konstruksi ini membentuk stream yang memancarkan data setiap satu detik. Parameter t berperan sebagai penghitung yang bertambah secara berurutan, lalu diproyeksikan ke dalam rentang indeks list colors melalui operasi modulo agar tetap valid. Dari hasil tersebut, warna dipilih sesuai indeks dan dikirimkan ke stream. Dengan mekanisme siklik ini, warna akan berganti tiap detik dan kembali ke awal setelah mencapai elemen terakhir, sehingga tercipta aliran data yang berulang tanpa henti.

### Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

# Langkah 7: Buka main.dart

Ketik kode impor file ini pada file main.dart

```dart
import 'stream.dart';
```

# Langkah 8: Tambah variabel

Ketik dua properti ini di dalam class \_StreamHomePageState

```dart
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
```

# Langkah 9: Tambah method changeColor()

Tetap di file main, Ketik kode seperti berikut

```dart
  void changeColor() async {
    await for (var eventColor in colorStream.getColors()) {
      setState(() {
        bgColor = eventColor;
      });
    }
  }
```

# Langkah 10: Lakukan override initState()

Ketika kode seperti berikut:

```dart
  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
```

# Langkah 11: Ubah isi Scaffold()

Sesuaikan kode seperti berikut.

```dart
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream CakraWangsa'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      ),
    );
  }
```

# Langkah 12: Run

Lakukan running pada aplikasi Flutter Anda, maka akan terlihat berubah warna background setiap detik.

## Soal 4

## Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![doksli](img/Praktikum1_Dart%20Stream.gif)

## Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

# Langkah 13: Ganti isi method changeColor()

Anda boleh comment atau hapus kode sebelumnya, lalu ketika kode seperti berikut.

## Soal 5

### Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

Perbedaan antara `await for` dan `listen()` terletak pada mekanisme eksekusi dan pengelolaan aliran data stream. Konstruksi `await for` menerapkan pendekatan sinkron-blocking yang mengiterasi setiap event secara berurutan dan menghentikan eksekusi kode selanjutnya hingga stream berakhir atau dibatalkan, sehingga cocok untuk pemrosesan data yang memerlukan urutan ketat. Sebaliknya, metode `listen()` mengimplementasikan pola asinkron-non-blocking dengan melakukan subscription terhadap stream dan langsung melanjutkan eksekusi kode berikutnya tanpa menunggu, memberikan fleksibilitas lebih tinggi melalui kemampuan penanganan error, callback completion, serta kontrol subscription yang dapat dibatalkan kapan saja, menjadikannya lebih optimal untuk aplikasi Flutter yang memerlukan responsivitas antarmuka pengguna.

### Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

# Praktikum 2: Stream controllers dan sinks

StreamControllers akan membuat jembatan antara Stream dan Sink. Stream berisi data secara sekuensial yang dapat diterima oleh subscriber manapun, sedangkan Sink digunakan untuk mengisi (injeksi) data.

Secara sederhana, StreamControllers merupakan stream management. Ia akan otomatis membuat stream dan sink serta beberapa method untuk melakukan kontrol terhadap event dan fitur-fitur yang ada di dalamnya.

Anda dapat membayangkan stream sebagai pipa air yang mengalir searah, dari salah satu ujung Anda dapat mengisi data dan dari ujung lain data itu keluar. Anda dapat melihat konsep stream pada gambar diagram berikut ini.

## Langkah 1: Buka file stream.dart

Lakukan impor dengan mengetik kode ini.

```dart
import 'dart:async';
```

## Langkah 2: Tambah class NumberStream

Tetap di file stream.dart tambah class baru seperti berikut.

```dart
class NumberStream {
}
```

## Langkah 3: Tambah StreamController

Di dalam class NumberStream buatlah variabel seperti berikut.

```dart
final StreamController<int> controller = StreamController<int>();
```

## Langkah 4: Tambah method addNumberToSink

Tetap di class NumberStream buatlah method ini

```dart
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }
```

## Langkah 5: Tambah method close()

```dart
  close() {
    controller.close();
  }
```

## Langkah 6: Buka main.dart

Ketik kode import seperti berikut

```dart
import 'dart:async';
import 'dart:math';
```

## Langkah 7: Tambah variabel

Di dalam class \_StreamHomePageState ketik variabel berikut

```dart
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
```

## Langkah 8: Edit initState()

```dart
  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    super.initState();
  }
```

## Langkah 9: Edit dispose()

```dart
  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }
```

## Langkah 10: Tambah method addRandomNumber()

```dart
void addRandomNumber() {
  Random random = Random();
  int myNum = random.nextInt(10);
  numberStream.addNumberToSink(myNum);
}
```

## Langkah 11: Edit method build()

```dart
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            )
          ],
        ),
      ),
```

## Langkah 12: Run

Lakukan running pada aplikasi Flutter Anda, maka akan terlihat seperti gambar berikut.

## Soal 6

#### Jelaskan maksud kode langkah 8 dan 10 tersebut!

**Langkah 8 (initState):**

Kode pada `initState()` berfungsi untuk melakukan inisialisasi dan konfigurasi stream saat widget pertama kali dibuat. Tahapan yang dilakukan meliputi pembuatan instance `NumberStream` sebagai sumber data, pengambilan referensi `StreamController` untuk mengakses stream-nya, kemudian melakukan subscription terhadap stream tersebut menggunakan method `listen()`. Setiap kali ada event (data baru) yang dipancarkan melalui stream, listener akan menangkapnya dan memanggil `setState()` untuk memperbarui nilai variabel `lastNumber`, yang kemudian memicu rebuild widget untuk menampilkan nilai terbaru di UI. Mekanisme ini menciptakan reaktivitas data dimana perubahan pada stream secara otomatis tercermin pada tampilan aplikasi.

**Langkah 10 (addRandomNumber):**

Method `addRandomNumber()` berperan sebagai trigger untuk menginjeksikan data ke dalam stream. Prosesnya dimulai dengan membuat instance `Random` untuk menghasilkan angka acak, kemudian menggunakan `nextInt(10)` untuk mendapatkan bilangan bulat acak dalam rentang 0 hingga 9. Angka yang dihasilkan tersebut kemudian dikirimkan ke stream melalui method `addNumberToSink()` dari `NumberStream`, yang secara internal memanfaatkan `controller.sink.add()` untuk memasukkan data ke dalam stream. Data ini selanjutnya akan ditangkap oleh listener yang telah didefinisikan pada `initState()`, menciptakan alur data searah dari source (sink) menuju subscriber (listener) yang merupakan konsep fundamental dari arsitektur stream.

#### Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![doksli](img/Praktikum2_Stream%20controllers%20dan%20sinks.gif)

#### Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

---

## Langkah 13: Buka stream.dart

Tambahkan method berikut ini.

```dart
  addError() {
    controller.sink.addError('error');
  }
```

## Langkah 14: Buka main.dart

Tambahkan method onError di dalam class StreamHomePageState pada method listen di fungsi initState() seperti berikut ini.

```dart
  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
    super.initState();
  }
```

## Langkah 15: Edit method addRandomNumber()

Lakukan comment pada dua baris kode berikut, lalu ketik kode seperti berikut ini.

```dart
  void addRandomNumber() {
    Random random = Random();
    // int myNum = random.nextInt(10);
    // numberStream.addNumberToSink(myNum);
    numberStream.addError();
  }
```

## Soal 7

### Jelaskan maksud kode langkah 13 sampai 15 tersebut!

Ketiga langkah tersebut mengimplementasikan mekanisme error handling dalam stream untuk menangani kondisi eksepsional yang mungkin terjadi selama pemrosesan data.

**Langkah 13** menambahkan method `addError()` pada class `NumberStream` yang berfungsi sebagai interface untuk menginjeksikan error ke dalam stream melalui `controller.sink.addError()`, memungkinkan simulasi atau penanganan kondisi error secara terkontrol.

**Langkah 14** melengkapi listener dengan callback `onError()` yang akan terpicu ketika stream mengirimkan error, dimana implementasinya mengubah nilai `lastNumber` menjadi -1 sebagai indikator visual bahwa telah terjadi error, memberikan feedback kepada pengguna tentang kondisi abnormal aplikasi.

**Langkah 15** memodifikasi method `addRandomNumber()` untuk men-trigger error dengan memanggil `numberStream.addError()` sebagai pengganti pengiriman data normal, berfungsi sebagai simulasi untuk menguji apakah mekanisme error handling bekerja dengan baik. Kombinasi ketiga langkah ini menciptakan alur error handling yang lengkap: dari injeksi error (source), propagasi melalui stream, hingga penanganan di subscriber (listener), yang merupakan praktik penting dalam pengembangan aplikasi robust untuk menangani skenario failure dengan graceful degradation.

### Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

```dart
  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
    // numberStream.addError();
  }
```

#### Lakukan commit dengan pesan "W12: Jawaban Soal 7".

---

# Praktikum 3: Injeksi data ke streams

Skenario yang umum dilakukan adalah melakukan manipulasi atau transformasi data stream sebelum sampai pada UI end user. Hal ini sangatlah berguna ketika Anda membutuhkan untuk filter data berdasarkan kondisi tertentu, melakukan validasi data, memodifikasinya, atau melakukan proses lain yang memicu beberapa output baru. Contohnya melakukan konversi angka ke string, membuat sebuah perhitungan, atau menghilangkan data yang berulang terus tampil.

Pada praktikum 3 ini, Anda akan menggunakan StreamTransformers ke dalam stream untuk melakukan map dan filter data.

Setelah Anda menyelesaikan praktikum 2, Anda dapat melanjutkan praktikum 3 ini. Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda pada setiap soal yang ada di beberapa langkah praktikum ini.

## Langkah 1: Buka main.dart

Tambahkan variabel baru di dalam class \_StreamHomePageState

```dart
  late StreamTransformer transformer;
```

## Langkah 2: Tambahkan kode ini di initState

```dart
    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10);
      },
      handleError: (error, trace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close(),
    );
```

## Langkah 3: Tetap di initState

Lakukan edit seperti kode berikut.

```dart
    stream.transform(transformer).listen((event) {
      setState(() {
        lastNumber = event;
      });
    }).onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });
```

## Langkah 4: Run

Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Anda akan melihat tampilan angka dari 0 hingga 90.

## Soal 8

### Jelaskan maksud kode langkah 1-3 tersebut!

Ketiga langkah tersebut mengimplementasikan transformasi data stream menggunakan `StreamTransformer` untuk memodifikasi nilai sebelum sampai ke listener. **Langkah 1** mendeklarasikan variabel `transformer` bertipe `StreamTransformer` yang akan berfungsi sebagai middleware untuk memproses data stream. **Langkah 2** melakukan inisialisasi transformer dengan `StreamTransformer<int, int>.fromHandlers()` yang mendefinisikan tiga handler: `handleData` untuk mentransformasi setiap nilai input dengan mengalikannya 10 (misalnya angka 5 menjadi 50), `handleError` untuk menangani error dengan mengubahnya menjadi nilai -1, dan `handleDone` untuk menutup sink ketika stream selesai. **Langkah 3** mengaplikasikan transformer ke stream menggunakan method `transform()` sebelum melakukan subscription dengan `listen()`, sehingga setiap data yang melewati stream akan terlebih dahulu ditransformasi (dikali 10) sebelum diterima oleh listener dan di-update ke UI melalui `setState()`. Mekanisme ini mendemonstrasikan konsep data pipeline dalam reactive programming, dimana data dapat diproses dan dimodifikasi secara deklaratif sebelum mencapai destination akhir, memungkinkan pemisahan logic transformasi dari logic presentasi untuk arsitektur yang lebih maintainable.

#### Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Stream Transformer](img/Praktikum3_Lanjutan%20State%20Management%20dengan%20Streams.gif)

#### Lakukan commit dengan pesan "W12: Jawaban Soal 8".
