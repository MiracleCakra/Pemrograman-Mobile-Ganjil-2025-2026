// EksperimenTipeDataList.dart
// Langkah 1
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }


// Modifikasi Langkah 3
void main() {
  final list = List<String?>.filled(5, null); // List panjang 5, default null
  list[1] = "Cakra Wangsa M.A.W";
  list[2] = "2341720032";

  print(list);            // print seluruh list
  print("Index 1: ${list[1]}");
  print("Index 2: ${list[2]}");
}

