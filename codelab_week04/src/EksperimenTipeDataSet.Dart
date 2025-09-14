//Langkah 1
//Membuat Set
// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

//Langkah 3
//Menambahkan elemen ke dalam Set

// void main() {
//   // Langkah 1
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);

//   // Langkah 3: inisialisasi variabel
//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a Map, not a Set

//   print(names1);
//   print(names2);
//   print(names3);
// }

//Langkah 3
//Perbaikan dengan tetap menggunakan tiga variabel

void main() {
  // Langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Langkah 3: inisialisasi variabel
  var names1 = <String>{};     // empty Set<String>
  Set<String> names2 = {};     // empty Set<String> (type annotation membuat {} jadi Set)
  var names3 = {};             // ini BUKAN set — ini Map<dynamic, dynamic>

  // Menambahkan elemen pada Set menggunakan .add()
  names1.add('Cakra Wangsa M.A.W');
  names1.add('2341720032');

  // Menambahkan elemen pada Set menggunakan .addAll()
  names2.addAll({'Cakra Wangsa M.A.W', '2341720032'});

  print(names1); // contoh: {Nama, NIM}
  print(names2); // contoh: {Nama, NIM}
  print(names3); // {} — ini Map kosong, bukan Set
}

