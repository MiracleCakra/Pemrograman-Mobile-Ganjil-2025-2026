<p align="center">
  <img src="https://3.bp.blogspot.com/-whSxEvHuEds/VOBUC7I5NNI/AAAAAAAAAUY/qfk23ch5o_c/s1600/logo_polinema_by_adminkerapolinema-d3b0ojd.jpg" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 03</h2>
<h3 align="center">Pengantar Bahasa Pemrograman Dart - Bagian 2</h3>
<h3 align="center">Pengantar Dasar Dart-Bag.3 (Collections and Functions)</h3>

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

# Praktikum 1: Eksperimen Tipe Data List

## Langkah 1
Ketik atau salin kode program berikut ke dalam `void main()`.

![Kode Program](img/image.png)

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Kode berhasil dijalankan tanpa error karena list bertipe `List<int>` yang bersifat mutable, sehingga elemen dapat diubah tanpa mengganti objek list. Semua `assert` terpenuhi dan tidak ada pelanggaran tipe data, sehingga program berjalan normal dengan output:

![Output Langkah 1](img/image-1.png)

## Langkah 3
Ubah kode pada langkah 1 menjadi variabel `final` yang mempunyai `index = 5` dengan default value = `null`. Isilah nama dan NIM Anda pada elemen `index` ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi? Jika terjadi error, silakan perbaiki.

**Jawab:**
Kode pada langkah 3 berhasil dijalankan tanpa error karena `final` hanya membuat referensi list tidak bisa diarahkan ke list lain, tetapi elemen di dalamnya tetap dapat diubah (mutable). Dengan `List<String?>.filled(5, null)` dibuat list sepanjang 5 dengan nilai awal `null`, kemudian `list[1]` diisi dengan nama dan `list[2]` diisi dengan NIM.

**Kode Program:**

![Kode Program Langkah 3](img/image-2.png)

**Output:**

![Output Langkah 3](img/image-3.png)

---

# Praktikum 2: Eksperimen Tipe Data Set

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

### Kode Program
![Kode Langkah 1](img/praktikum2_week4Mobile.jpg)

### Output
![Output Langkah 1](img/outputpraktikum2_langkah1_week4Mobile.jpg.png)

---

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawab:**
Pada kode program akan menampilkan isi set tanpa error karena semua elemennya unik dan bertipe String. Set digunakan untuk menyimpan data yang tidak boleh duplikat, urutan elemen akan mengikuti urutan saat dimasukkan, dan proses pengecekan anggotanya cepat. Dan pada tanda `{}` kosong akan dianggap sebagai Map, jadi untuk membuat set kosong harus ditulis dengan `<T>{}` atau `Set<T>()`.

---

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

**Jawab:**

### Kode Program
![Kode Program sebelum ditambahkan](img/praktikum2_langkah3_week4Mobile.jpg)

### Output
![Output Program sebelum ditambahkan](img/outputpraktikum2_langkah3_week4Mobile.jpg.png)

Jika kode program tidak diberikan tambahan. Pada kode program akan menghasilkan output, di baris pertama akan menampilkan daftar unsur halogen karena Dart mengenalinya sebagai Set berisi string. Dua variabel berikutnya (`names1` dan `names2`) juga adalah `Set<String>` kosong, sehingga saat dicetak terlihat `{}`. Namun, variabel terakhir (`names3`) dibuat dengan `{}` tanpa tipe, sehingga Dart menganggapnya sebagai Map kosong, bukan Set. Meskipun memiliki tampilan yang sama pada output, tipe datanya berbeda, sehingga cara penggunaannya di program juga akan berbeda.

---

### Kode Program (Setelah Perbaikan)
![Kode program setelah perbaikan](img/praktikum2_Perbaikanlangkah3_week4Mobile.jpg)

### Output
![Output setelah perbaikan](img/outputpraktikum2_perbaikanlangkah3_week4Mobile.jpg.png)

Namun jika kode program diberikan perbaikan pada langkah ini dengan tiga variabel: `names1 = <String>{}` dan `names2 = {}` yang adalah Set kosong, sedangkan `names3 = {}` sebenarnya Map kosong. Maka isi pada `names1` dengan nama dan NIM menggunakan `.add()` satu per satu, dan `names2` menggunakan `.addAll()` sekaligus. Saat dijalankan, keduanya menampilkan isi Set sesuai urutan yang ditambahkan, sedangkan `names3` tetap `{}` karena Map kosong.

---

# Praktikum 3: Eksperimen Tipe Data Maps

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

**Jawab:**

### Kode Program
![Kode Program](img/praktikum3_langkah1_week4Mobile.jpg)

### Output
![Output](img/outputpraktikum3_langkah1_week4Mobile.jpg.png)

---

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawab:**

![Output Langkah 1](img/outputpraktikum3_langkah1_week4Mobile.jpg.png)

Kode program menghasilkan output yang menunjukkan bahwa **Map** berhasil dibuat dan dicetak tanpa error karena format deklarasi benar.
Dikarenakan **Map** menyimpan data dalam bentuk pasangan key–value, di mana setiap key harus unik.
Data dapat diakses, ditambahkan, atau diubah menggunakan key-nya.

---

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

**Jawab:**

### Kode Program
![Kode program sebelum diperbaiki](img/praktikum3_langkah3_week4Mobile.jpg)

### Output
![Output sebelum diperbaiki](img/outputpraktikum3_langkah3_week4Mobile.jpg.png)

Sebelumnya kode program membuat dua `Map`: `gifts` (kunci `String`) dan `nobleGases` (kunci `int`).
Awalnya, keduanya berisi campuran nilai `String` dan `int`. Tetapi setelah menambahkan kode, maka akan mengubah nilai tertentu:
`gifts['fifth']` dari `1` menjadi `'golden rings'`, dan `nobleGases[18]` dari `2` menjadi `'argon'`.
Hasil akhirnya, kedua `Map` berisi nilai `String` semua, dan perubahan langsung terlihat saat dicetak ulang.

---

### Menambahkan elemen nama dan NIM Anda pada tiap variabel

### Kode Program
![Perbaikan Kode Program](img/praktikum3_perbaikanlangkah3_week4Mobile.jpg)

### Output
![Output Perbaikan](img/outputpraktikum3_perbaikanlangkah3_week4Mobile.jpg.png)

Setelah program diberikan tambahan maka akan membuat dan menampilkan beberapa **Map** di Dart.
Pertama, `gifts` berisi pasangan kunci–nilai dengan kunci bertipe `String`, sedangkan `nobleGases` berisi kunci bertipe `int`.
Keduanya langsung diisi data, lalu dicetak.

Setelah itu dibuat `mhs1` (Map dengan kunci dan nilai `String`) yang diisi data nama dan NIM, serta `mhs2` (Map dengan kunci `int` dan nilai `String`) yang juga diisi data yang sama.
Semua Map tersebut kemudian dicetak, sehingga terlihat isi masing-masing sesuai tipe dan data yang dimasukkan.

