<p align="center">
  <img src="https://3.bp.blogspot.com/-whSxEvHuEds/VOBUC7I5NNI/AAAAAAAAAUY/qfk23ch5o_c/s1600/logo_polinema_by_adminkerapolinema-d3b0ojd.jpg" alt="Logo Polinema" width="150">
</p>

<h1 align="center">LAPORAN PRAKTIKUM</h1>
<h2 align="center">JOBSHEET 02</h2>
<h3 align="center">Pengantar Bahasa Pemrograman Dart</h3>

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

# **Tugas: Pemahaman Bahasa Dart untuk Flutter**

---

## **1. Modifikasi Kode**
Modifikasilah kode pada baris 3 di **VS Code** atau editor favorit Anda agar mendapatkan keluaran (output) sesuai yang diminta.

### **Kode Sebelum Dimodifikasi**
<p align="center">
  <img src="https://github.com/user-attachments/assets/b0519c79-79e6-4b74-952a-9141cf893253" alt="Kode Sebelum" width="350">
</p>

### **Hasil Modifikasi Kode**
<p align="center">
  <img src="https://github.com/user-attachments/assets/432d2442-cb09-4638-b16b-37c3f34e8207" alt="Hasil Modifikasi" width="560">
</p>

### **Output Kode**
<p align="center">
  <img src="https://github.com/user-attachments/assets/2fe2ba21-437e-4124-9012-b62eee4f4ebe" alt="Output Kode" width="500">
</p>

---

## **2. Mengapa Penting Memahami Bahasa Dart Sebelum Menggunakan Flutter?**

Pengembangan framework **Flutter** melibatkan fitur mendalam dari bahasa **Dart** mulai dari:  
- Kode aplikasi  
- Kode plugin  
- Manajemen dependensi  

Semuanya berbasis Dart dan fitur-fiturnya.  
Memiliki **pemahaman dasar yang kuat tentang Dart** akan:  
- Memudahkan produktivitas dengan Flutter  
- Membuat pengembang nyaman dalam proses pengembangan Flutter  

---

## **3. Ringkasan Materi Codelab dalam Poin-Poin**

### **a. Mengapa Dart Penting untuk Flutter**
- Dart adalah inti dari framework Flutter  
- Flutter membutuhkan bahasa modern untuk pengalaman terbaik  
- Semua kode aplikasi, plugin, dan dependensi Flutter berbasis Dart  

---

### **b. Apa yang Dipelajari dalam Codelab Ini**
- Getting started with Dart: dasar-dasar Dart  
- Evolution of Dart: perkembangan dan alasan pemilihan Dart  
- How Dart works: cara kerja Dart (VM, kompilasi)  
- Structure of Dart: sintaks, OOP, operator  
- Hands-on dengan Dart: praktik via DartPad/lokal  

---

### **c. Persiapan Sebelum Belajar**
- PC/Laptop minimal RAM 4GB, Core i3  
- Koneksi internet & Chrome  
- Pengetahuan dasar: Algoritma, Pemrograman Dasar, OOP  

---

### **d. Fitur Utama Bahasa Dart**
- **Productive tooling**: IDE plugin, analisis kode  
- **Garbage collection**: otomatis mengelola memori  
- **Optional type annotations**: keamanan tipe  
- **Statically typed & type inference**: mengurangi bug  
- **Portability**: mendukung web, mobile (ARM/x86), native compilation  

---

### **e. Perkembangan Dart (Evolution of Dart)**
- Diluncurkan 2011, stabil 2013, Dart 2.0 (2018)  
- Awalnya untuk web, kini fokus mobile & Flutter  
- Tujuan: performa tinggi, alat modern, OOP kuat, fleksibel  
- Alasan Flutter memilih Dart: modern, lintas platform, fleksibel  

---

### **f. Cara Kerja Dart**
- **Eksekusi melalui**:  
  - Dart VM (pengembangan & debugging)  
  - JavaScript compilation (untuk web)  
- **Mode Kompilasi**:  
  - JIT (Just-In-Time): cepat untuk hot reload & debugging  
  - AOT (Ahead-Of-Time): optimalisasi performa untuk rilis  
- **Hot reload**: perubahan kode langsung terlihat saat pengembangan  

---

### **g. Struktur Bahasa Dart**
- Sintaks mirip C/JavaScript  
- Mendukung **OOP**:  
  - Encapsulation  
  - Inheritance  
  - Composition  
  - Abstraction  
  - Polymorphism  
- **Function vs Method**:  
  - Function → di luar class  
  - Method → di dalam class (terkait objek)  

---

### **h. Operator di Dart**
- Arithmetic: `+`, `-`, `*`, `/`, `~/`, `%`  
- Increment/Decrement: `++`, `--`  
- Equality & Relational: `==`, `!=`, `>`, `<`, `>=`, `<=`  
- Logical: `!`, `||`, `&&`  
- Semua operator adalah **method** pada class, bukan operasi primitif  

---

### **i. Hands-on dengan Dart**
- **DartPad**: alat online untuk menulis & menjalankan kode Dart  
- **Hello World** Example:  
  - Simpan file `.dart`  
  - Jalankan dengan `dart nama_file.dart`  

---

### **j. Kenapa Belajar Dart Penting untuk Flutter**
- Sintaks Dart: dasar pembuatan widget Flutter  
- OOP Dart: struktur class di Flutter  
- Type safety: mencegah bug  
- Hot reload: keunggulan Flutter didukung JIT Dart  

---

## **4. Perbedaan Null Safety dan Late Variable**

### **A. Null Safety**
Null Safety adalah fitur Dart yang memastikan bahwa **variabel tidak akan bernilai `null`**, kecuali secara eksplisit diizinkan.  
Dengan Null Safety, kita dapat mencegah error seperti **null reference exception**.  
Jika ingin mengizinkan variabel bernilai `null`, gunakan tanda **`?`** setelah tipe data.

#### **Contoh Kode:**
<p align="center">
  <img src="https://github.com/user-attachments/assets/cc54553d-99bd-4dd1-9daa-599ddcbd2d1f" alt="Contoh Null Safety" width="600">
</p>

#### **Output:**
<p align="center">
  <img src="https://github.com/user-attachments/assets/6128207d-6f70-4a07-850a-640b95426688" alt="Output Null Safety" width="530">
</p>

---

### **B. Late Variable**
`late` digunakan untuk **menunda inisialisasi variabel non-nullable** sampai variabel tersebut benar-benar digunakan.  
Ini berguna ketika variabel **tidak dapat diinisialisasi secara langsung**, tetapi kita yakin bahwa variabel tersebut akan memiliki nilai sebelum digunakan.

#### **Contoh Kode:**
<p align="center">
  <img src="https://github.com/user-attachments/assets/faed2fa0-cd9a-42d6-8956-8261ea357d05" alt="Contoh Late Variable" width="560">
</p>

#### **Output:**
<p align="center">
  <img src="https://github.com/user-attachments/assets/a33c79de-2562-4b42-a125-ddb7d46f86ff" alt="Output Late Variable" width="590">
</p>





