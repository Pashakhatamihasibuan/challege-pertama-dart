import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // Solusi 2
  // Input User
  stdout.write("Masukan jawabanmu: ");
  String? inputUser = stdin.readLineSync();

  // Fungsi untuk memparsing input dan menampilkan error jika invalid
  int? swapInput(String? input) {
    if (input == null || input.isEmpty) {
      print("Input tidak boleh kosong, Silahkan coba lagi.");
      return null;
    }
    int? swapValue = int.tryParse(input);
    if (swapValue == null) {
      print("Input tidak valid. Harap masukan input yang benar.");
    }
    return swapValue;
  }

  // Memparsing Input
  int? swapValue = swapInput(inputUser);

  // Memastikan ke empat input valid sebelum melakukan perhitungan
  if (swapValue != null) {
    // Melakukan perhitungan
    num result = pow(2, 3) + 4 * 5 - 6;
    if (swapValue == result) {
      print("Gerbang terbuka");
    } else {
      print("Gerbang terkunci");
    }
  }
}
