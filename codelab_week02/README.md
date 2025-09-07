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

# Praktikum Dart – For Loop
# Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

## Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi `main()`.

<img width="389" height="86" alt="image" src="https://github.com/user-attachments/assets/9a73d26b-fe24-4c50-a89c-764db20d27ff" />

---

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

**Jawab:**  

**Perbaikan kode**  
<img width="583" height="170" alt="image" src="https://github.com/user-attachments/assets/addf544a-2d4d-4a49-8b3d-6a202edd8210" />

**Output**  
<img width="136" height="455" alt="image" src="https://github.com/user-attachments/assets/796106b0-7b5d-4a15-a884-c7f02b736f2b" />

Pada kode terdapat kesalahan dikarenakan pada variabel Index tidak dideklarasikan dengan sebuah tipe data. Dan pada kode terdapat variabel yang tidak konsisten yaitu Index dan index dikarenakan dalam dart perbedaan huruf besar dan kecil sangat memengaruhi kode, lalu tidak adanya proses increment i++ sehingga tidak dapat mengenali variabel yang dimaksud.

---

## Langkah 3
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.

<img width="389" height="86" alt="image" src="https://github.com/user-attachments/assets/2c1a0395-1a7f-4cf8-b2fb-ec8da3636b16" />

**Jawab:**  

**Perbaikan Kode**  
<img width="579" height="244" alt="image" src="https://github.com/user-attachments/assets/ded8d128-b31e-40dc-bfb1-ad3e78b8c0d0" />


**Output**  
<img width="138" height="393" alt="image" src="https://github.com/user-attachments/assets/c5e0436d-3ac7-4387-9667-a87887d4b407" />

pada kode sebelumnya mengalami kesalahan pada If dan Else If yang harus ditulis secara lower case yaitu if dan else if, lalu pada variabel Index yang tidak dikenali dikarenakan menggunakan huruf besar, namun pada deklarasi int menggunakan huruf kecil. Dan disini saya menggunakan logika AND agar dapat melewatkan (continue) jika index berada di antara 2 dan 6. Tetapi karena loop dimulai dari index = 10, kondisi ini tidak pernah terpenuhi, sehingga continue tidak pernah dijalankan.

<img width="552" height="282" alt="image" src="https://github.com/user-attachments/assets/96086f5e-42dc-400c-9a30-2dc8e3299de3" />

Apabila tetap menggunakan fungsi or dalam else if, maka tidak akan menghasilkan satupun output dikarenakan semua iterasi dari 10-20 akan terkena continue dikarenakan loop dari index = 10 sampai < 27 akan berhenti saat index == 21 karena break.  
Dan kondisi index > 1 || index < 7 selalu true untuk index 10–20, jadi blok else if selalu dijalankan sebelum break.

---

# Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!  
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.  

**Jawab:**  

**Kode Program**  
<img width="552" height="466" alt="image" src="https://github.com/user-attachments/assets/c7820649-24a9-4f20-94a5-079de59db4b1" />

**Output**  
<img width="462" height="608" alt="image" src="https://github.com/user-attachments/assets/3f6d66ba-541c-4969-b245-bd741a051aaa" />  
<img width="447" height="588" alt="image" src="https://github.com/user-attachments/assets/b2c266cf-ca83-41ee-990e-b89e28a3ab61" />

3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!

