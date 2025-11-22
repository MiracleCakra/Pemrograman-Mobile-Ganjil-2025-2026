<p align="center">
  <img src="https://dianisa.com/wp-content/uploads/2024/05/Logo-Politeknik-Negeri-Malang-Dianisa.com_.png" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 13</h2>
<h3 align="center">Persistensi Data</h3>

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
---

### **Alamat Kampus**

Politeknik Negeri Malang
Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141
**Phone** : (0341) 404424, 404425
**Email** : [Polinema.ac.id](https://www.polinema.ac.id)

</div>

---

---

# Praktikum 1: Konversi Dart model ke JSON
Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Jawablah di laporan praktikum Anda (ketik di README.md) pada setiap soal yang ada di beberapa langkah praktikum ini.


### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama store_data_nama (beri nama panggilan Anda) di folder week-13/src/ repository GitHub Anda.


### Langkah 2: Buka file main.dart
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
      title: 'Flutter JSON Demo - cakrawangsa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter JSON Demo - cakrawangsa'),
      ),
      body: Container(),
    );
  }
}
```

### Soal 1
1. Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

```dart
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo - cakrawangsa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
```

2. Gantilah warna tema aplikasi sesuai kesukaan Anda.

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter JSON Demo - cakrawangsa'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Soal 1 - Merubah Warna Tema Aplikasi',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue.shade900,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
```

3. Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

    hasil kode penuh

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
        title: 'Flutter JSON Demo - cakrawangsa',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.blue.shade50,
            appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue.shade900,
            elevation: 0,
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
            ),
        ),
        home: const MyHomePage(),
        );
    }
    }

    class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            title: const Text('Flutter JSON Demo - cakrawangsa'),
        ),
        body: Center(
            child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                'Soal 1 - Merubah Warna Tema Aplikasi',
                textAlign: TextAlign.center,
                style: TextStyle(
                fontSize: 24,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }
    }
    ```


### Langkah 3: Buat folder baru assets
Buat folder baru assets di root project Anda



### Langkah 4: Buat file baru pizzalist.json
Letakkan file ini di dalam folder assets, lalu salin data JSON berikut ke file tersebut.

```json
[ 
    { 
      "id": 1, 
      "pizzaName": "Margherita", 
      "description": "Pizza with tomato, fresh mozzarella and basil",
      "price": 8.75, 
      "imageUrl": "images/margherita.png" 
    }, 
    { 
      "id": 2, 
      "pizzaName": "Marinara", 
      "description": "Pizza with tomato, garlic and oregano",
      "price": 7.50, 
      "imageUrl": "images/marinara.png"  
    }, 
    { 
      "id": 3, 
      "pizzaName": "Napoli", 
      "description": "Pizza with tomato, garlic and anchovies",
      "price": 9.50, 
      "imageUrl": "images/marinara.png"  
    }, 
    { 
      "id": 4, 
      "pizzaName": "Carciofi", 
      "description": "Pizza with tomato, fresh mozzarella and artichokes",
      "price": 8.80, 
      "imageUrl": "images/marinara.png"  
    }, 
    { 
      "id": 5, 
      "pizzaName": "Bufala", 
      "description": "Pizza with tomato, buffalo mozzarella and basil",
      "price": 12.50, 
      "imageUrl": "images/marinara.png"  
    }
]
```

### Langkah 5: Edit pubspec.yaml
Tambahkan referensi folder assets ke file pubspec.yaml seperti berikut ini.

```yaml
  uses-material-design: true
  assets:
    - assets/pizzalist.json
```

### Langkah 6: Edit maint.dart
Buatlah variabel seperti berikut ini class _MyHomePageState.

```dart
  String pizzaString = '';
```

### Langkah 7: Tetap di main.dart
Untuk membaca isi dari file pizzalist.json di dalam class _MyHomePageState, tambahkan method readJsonFile seperti kode berikut untuk membaca file json.

```dart
  Future readJsonFile() async {
    String myString = await DefaultAssetBundle.of(context)
        .loadString('assets/pizzalist.json');
    
    setState(() {
      pizzaString = myString;
    });
  }
```

### Langkah 8: Panggil method readJsonFile
Panggil method readJsonFile di initState

```dart
  @override
  void initState() {
    super.initState();
    readJsonFile();
  }
```

### Langkah 9: Tampilkan hasil JSON
Kemudian tampilkan hasil JSON di body scaffold.

```dart
body:Text(pizzaString),
```

### Langkah 10: Run
Jika kode sudah benar, seharusnya tampil seperti gambar berikut ini.

![hasil json](img/Praktikum%201_hasil%20JSON.jpg)

### Soal 2
Masukkan hasil capture layar ke laporan praktikum Anda.

![hasil json](img/Praktikum%201_hasil%20JSON.jpg)

Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"