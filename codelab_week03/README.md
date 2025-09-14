<p align="center">
  <img src="https://3.bp.blogspot.com/-whSxEvHuEds/VOBUC7I5NNI/AAAAAAAAAUY/qfk23ch5o_c/s1600/logo_polinema_by_adminkerapolinema-d3b0ojd.jpg" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 03</h2>
<h3 align="center">Pengantar Bahasa Pemrograman Dart - Bagian 2</h3>
<h3 align="center">Pengantar Dasar Dart-Bag.2 (Percabangan dan Perulangan)</h3>

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
# Praktikum Dart – Control Flows & Perulangan

## Praktikum 1: Menerapkan Control Flows ("if/else")

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

![Langkah 1](https://github.com/user-attachments/assets/567fc480-d285-4f8d-998d-5da5e96b7e30)

### Langkah 2
Eksekusi (Run) kode pada langkah 1.  
**Jawab:**  
Error terjadi karena Dart bersifat case-sensitive, sehingga penulisan keyword harus huruf kecil (`if`, `else if`, `else`). Penggunaan huruf besar seperti `If` atau `Else` dianggap sebagai nama variabel/fungsi yang tidak ada dan memicu error.

![Langkah 2 Output](https://github.com/user-attachments/assets/52f6181c-d090-4788-84f8-70953dabf6bb)

### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode.

![Langkah 3](https://github.com/user-attachments/assets/2a2c5a5b-34d5-40b0-b671-9acec20687c0)

**Perbaikan:**  
Error muncul karena variabel `test` dideklarasikan ulang dalam scope yang sama (seharusnya cukup dideklarasikan sekali lalu nilainya diubah), dan karena kondisi `if` tidak dievaluasi sebagai boolean murni. Perbaikannya adalah:
- Gunakan satu deklarasi `test` saja lalu ubah nilainya tanpa redeklarasi.
- Pastikan setiap kondisi menghasilkan `bool`, misalnya `test == "true"` atau konversi string ke boolean.

**Kode Program**

![Kode Program](https://github.com/user-attachments/assets/fc353918-b685-4f89-96b1-380cfbb6b55c)

**Output**

![Output](https://github.com/user-attachments/assets/ef4f989a-7541-48db-a5fc-91c37d2bbbbf)

---

## Praktikum 2: Menerapkan Perulangan "while" dan "do-while"

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

![Langkah 1](https://github.com/user-attachments/assets/10f39447-6545-4a47-91d6-579cbf1b5124)

### Langkah 2
Eksekusi kode pada langkah 1.  
**Jawab:**  
Kode menghasilkan error `undefined name counter`, karena variabel `counter` belum ditambahkan.  

**Perbaikan Kode**

![Perbaikan](https://github.com/user-attachments/assets/d83afda0-8ef7-4a0f-958b-efc40db51f46)

**Output**

![Output](https://github.com/user-attachments/assets/9f4b5da5-19a6-4a8b-ac89-86b9587bdaa2)

### Langkah 3
Tambahkan kode program berikut, lalu eksekusi kembali.  
**Jawab:**  
Kode mencetak angka `0` hingga `32` menggunakan **while loop**, kemudian angka `33` hingga `76` menggunakan **do-while loop**, dan berhenti sebelum angka `77`.

**Kode Program**

![Kode Program](https://github.com/user-attachments/assets/e72546f9-b995-4353-96f3-51e8f68d043e)

**Output**

![Output](https://github.com/user-attachments/assets/2e6d945a-9025-40b8-8a8c-13fd0097c893)

---

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

![Langkah 1](https://github.com/user-attachments/assets/9a73d26b-fe24-4c50-a89c-764db20d27ff)

### Langkah 2
Eksekusi kode pada langkah 1.  
**Jawab:**  
Kesalahan terjadi karena variabel `Index` tidak dideklarasikan dengan tipe data dan terdapat inkonsistensi penulisan (`Index` vs `index`). Juga tidak ada increment `i++`.  

**Perbaikan Kode**

![Perbaikan](https://github.com/user-attachments/assets/addf544a-2d4d-4a49-8b3d-6a202edd8210)

**Output**

![Output](https://github.com/user-attachments/assets/796106b0-7b5d-4a15-a884-c7f02b736f2b)

### Langkah 3
Tambahkan kode program berikut di dalam for-loop, lalu eksekusi kembali.

![Langkah 3](https://github.com/user-attachments/assets/2c1a0395-1a7f-4cf8-b2fb-ec8da3636b16)

**Perbaikan Kode**

![Perbaikan](https://github.com/user-attachments/assets/ded8d128-b31e-40dc-bfb1-ad3e78b8c0d0)

**Output**

![Output](https://github.com/user-attachments/assets/c5e0436d-3ac7-4387-9667-a87887d4b407)

Penjelasan:
- `if` dan `else if` harus menggunakan huruf kecil.
- Gunakan variabel `index` yang konsisten.
- Logika `continue` dengan `index > 1 && index < 7` tidak pernah terpenuhi karena loop dimulai dari `index = 10`.
- Jika tetap menggunakan `||`, maka semua iterasi dari `10–20` akan terkena `continue`, sehingga tidak menghasilkan output.

---

## Tugas Praktikum

1. **Dokumentasi**  
Selesaikan Praktikum 1 sampai 3, sertakan screenshot hasil pekerjaan beserta penjelasan (sudah ditampilkan di atas).

2. **Program Bilangan Prima 0–201**  
Buat program yang menampilkan bilangan prima dari 0 sampai 201 menggunakan Dart. Saat menemukan bilangan prima, tampilkan **nama lengkap** dan **NIM**.

**Kode Program**

![Kode Program](https://github.com/user-attachments/assets/c7820649-24a9-4f20-94a5-079de59db4b1)

**Output**

![Output 1](https://github.com/user-attachments/assets/3f6d66ba-541c-4969-b245-bd741a051aaa)  
![Output 2](https://github.com/user-attachments/assets/b2c266cf-ca83-41ee-990e-b89e28a3ab61)

3. **Pengumpulan**  
Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram.

