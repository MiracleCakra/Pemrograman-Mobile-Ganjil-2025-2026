//Langkah 1: program dart untuk eksperimen tipe data Map
// main () {
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);
// }

//Langkah 3
void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'nama': 'Cakra Wangsa M.A.W',
    'nim': '2341720032'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
    99: 'Cakra Wangsa M.A.W-2341720032'
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Cakra Wangsa M.A.W';
  mhs1['nim'] = '2341720032';
  print(mhs1);

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Cakra Wangsa M.A.W';
  mhs2[2] = '2341720032';
  print(mhs2);
}

