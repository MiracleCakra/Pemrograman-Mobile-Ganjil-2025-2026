void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  // Perbaikan kode variable test
  test = "true";
  if (test == "true") {
    print("Kebenaran");
  } else {
    print("Kesalahan");
  }

  if (test == "true") print("Kebenaran lagi");
}

