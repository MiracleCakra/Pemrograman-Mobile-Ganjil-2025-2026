// Soal nomor 3 Jenis-Jenis Parameter di Functions

// Positional Parameter
// main () {
//   void greet(String nama, String masadepan, int umur) {
//     print('Hai aku $nama, dari masadepan $masadepan, umurku $umur tahun');
//   }
//   greet('Sore','untuk membantumu coding!', 21);
// }

// Optional Positional Parameter
// main () {
//   void sayHello(String nama, [String? pesan]) {
//   print('Halo $nama, ${pesan ?? "tidak ada pesan"}');
// }

// sayHello('Cakra');
// sayHello('Cakra', 'Semangat!');

// }

// Named Parameter

// main () {
//   void buatProfil({required String nama, int Kelas = 0}) {
//   print('Nama: $nama, Kelas: $Kelas');
//   }

//   buatProfil(nama: 'Cakra', Kelas: 3);
//   }

// Soal nomor 4 Functions sebagai First-Class Objects

// void halo(String nama) => print("Halo $nama");

// // Fungsi yang menerima fungsi lain sebagai parameter
// void jalankan(void Function(String) fungsi, String value) {
//   fungsi(value);
// }

// // Fungsi yang mengembalikan fungsi lain
// Function buatPenyapa(String sapaan) {
//   return (String nama) => print("$sapaan, $nama!");
// }

// void main() {
//   // Simpan fungsi dalam variabel
//   var f = halo;
//   f("Sore");

//   // Kirim fungsi sebagai parameter
//   jalankan(halo, "Gunawan");

//   // Gunakan fungsi anonim langsung
//   jalankan((nama) => print("Selamat datang $nama"), "Cakra");

//   // Simpan fungsi hasil dari fungsi lain
//   var penyapaPagi = buatPenyapa("Selamat pagi");
//   penyapaPagi("Slamet");

//   var penyapaMalam = buatPenyapa("Selamat malam");
//   penyapaMalam("Basuki");
// }

// Soal 5 Anonymous Functions

// void main() {
//   var angka = [1, 2, 3];
//   angka.forEach((n) {
//     print('Angka: $n');
//   });
// }


// Soal 6 Lexical Scope vs Lexical Closures

// Lexical Scope
// void main() {
//   var x = 10;
//   void tampilX() {
//     print(x); // x bisa diakses karena ada di scope luar
//   }
//   tampilX();
// }

// Lexical Closures
// Function counter() {
//   var hitung = 0;
//   return () {
//     hitung++;
//     print(hitung);
//   };
// }

// void main() {
//   var tambah = counter();
//   tambah(); // 1
//   tambah(); // 2 -> variabel hitung tetap tersimpan
// }

// Soal 7 Return Multiple Values
// Fungsi mengembalikan multiple values dengan record
(String, int, List<String>) profilLengkap() {
  String nama = 'Cakra Wangsa M.A.W';
  int umur = 21;
  List<String> hobi = ['Coding', 'Gaming', 'Membaca'];

  return (nama, umur, hobi);
}

void main() {
  // Destructuring record
  var (nama, umur, hobi) = profilLengkap();

  print('=== PROFIL ===');
  print('Nama : $nama');
  print('Umur : $umur tahun');
  print('Hobi : ${hobi.join(", ")}');

  if (umur >= 18) {
    print('Status: Dewasa');
  } else {
    print('Status: Belum Dewasa');
  }
}
