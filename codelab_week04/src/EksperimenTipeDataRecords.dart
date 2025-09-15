// Langkah 1
// void main () {
//   var record = ('first', a: 2, b: true, 'last');
// print(record);
// }

// Langkah 3
// void main(){
//   var koneksi = (33, 66);
//   print("Sebelum tukar: $koneksi");

//   var hasil = tukar(koneksi);
//   print("Sesudah tukar: $hasil");
// }

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// Langkah 4
// void main() {
//   // Record dengan tipe data (String, int)
//   (String, int) mahasiswa = ('Cakra Wangsa M.A.W', 2341720032);
//   print(mahasiswa);
// }


// Langkah 5
// void main() {
//   var mahasiswa2 = ('first', a: 2, b: true, 'last');

// print(mahasiswa2.$1); // Prints 'first'
// print(mahasiswa2.a);  // Prints 2
// print(mahasiswa2.b);  // Prints true
// print(mahasiswa2.$2); // Prints 'last'

// }

// Penambahan kode

void main() {
  // Record dengan field bernama & positional
  var mahasiswa2 = ('Cakra', a: 2341720032, b: true, 'Polinema');

  print(mahasiswa2.$1); // Prints 'Cakra'
  print(mahasiswa2.a);  // Prints 2341720032
  print(mahasiswa2.b);  // Prints true
  print(mahasiswa2.$2); // Prints 'Polinema'
}


