void main() {
    String nama = "CAKRA WANGSA MAY AHMAD WIDODO";
    String nim = "2341720032";

    for (int i = 0; i <= 200; i++) {
        if (isPrima(i)) {
            print("Bilangan prima ditemukan: $i");
            print("Nama: $nama");
            print("NIM: $nim\n");
        }
    }
}

bool isPrima(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
        if (number % i == 0) return false;
    }
    return true;
}
