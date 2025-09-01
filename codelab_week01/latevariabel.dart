class Mahasiswa {
  late String namaLengkap; // Inisialisasi tertunda untuk nama lengkap
  late String nim; // Inisialisasi tertunda untuk NIM

  void isiData(String nama, String nimMahasiswa) {
    namaLengkap = nama;
    nim = nimMahasiswa;
  }

  void tampilkanData() {
    print("Nama Mahasiswa: $namaLengkap");
    print("NIM: $nim");
  }
}

void main() {
  var mhs = Mahasiswa();
  mhs.isiData("CAKRA WANGSA M.A.W", "2341720032");
  mhs.tampilkanData();
}
