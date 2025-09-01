void main() {
  String name = 'CAKRA USE NULL SAFETY'; // Variabel non-null
  String? doesnotusenullsafety; // Variabel nullable

  print('Name: $name'); // Menampilkan nama
  print('Nickname: ${doesnotusenullsafety ?? 'Belum ada'}'); // Menampilkan nickname atau default jika null
}
