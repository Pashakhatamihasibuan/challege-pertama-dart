import 'dart:io';

void main(List<String> args) {
  // Solusi 3
  stdout.write("Masukan arah yang kamu pilih (utara/barat/timur): ");
  String? input = stdin.readLineSync()!.toLowerCase();

  if (input == "utara") {
    print("Jalan yang kamu pilih benar.");
  } else {
    print("Jalan yang kamu pilih salah.");
  }
}
