//Langkah 1: Eksperimen Tipe Data List: Spread dan Control-flow Operators
// main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);
//   print(list2);
//   print(list2.length);
// }

// Langkah 3
// void main() {
//   // List awal
//   List<int?> list1 = [1, 2, 3];
//   var list2 = [0, ...list1];

//   print(list1);        // [1, 2, 3]
//   print(list2);        // [0, 1, 2, 3]
//   print(list2.length); // 4

//   // Kode tambahan: list1 berisi null
//   list1 = [1, 2, null];
//   print(list1);        // [1, 2, null]

//   var list3 = [0, ...?list1];
//   print(list3.length); // 4

//   // Tambahan: list berisi NIM
//   List<int> nimList = [2, 3, 4, 1, 7, 2, 0, 0, 3, 2];
//   var gabungan = [...list2, ...nimList];

//   print(nimList);   // [2, 3, 4, 1, 7, 2, 3, 4, 5, 6]
//   print(gabungan);  // [0, 1, 2, 3, 2, 3, 4, 1, 7, 2, 3, 4, 5, 6]
// }

// Langkah 4
// void main() {
// var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav);

// bool promoActive = true;
// var nav_true = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav_true);

// promoActive = false;
// var nav_false = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav_false);
// }

// Langkah 5
void main() {
  // Coba berbagai kondisi login
  final roles = <String?>[null, 'Guest', 'Staff', 'Manager', 'Admin'];

  for (final login in roles) {
    final nav2 = [
      'Home',
      'Furniture',
      'Plants',
      if (login == 'Manager') 'Inventory',   // hanya Manager
      if (login == 'Admin') 'Dashboard',     // hanya Admin
      if (login == 'Staff' || login == 'Manager' || login == 'Admin') 'Reports', // role kerja
    ];

    print('login: ${login ?? 'null/guest'} -> $nav2');
  }
}
