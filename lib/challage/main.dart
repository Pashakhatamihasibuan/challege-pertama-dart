import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // * Solusi 1
  // Input titik saat ini
  stdout.write("Masukan koordinat X titikmu saat ini: ");
  String? inputX1 = stdin.readLineSync();

  stdout.write("Masukan koordinat Y titikmu saat ini: ");
  String? inputY1 = stdin.readLineSync();

  // Input titik harta karun
  stdout.write("Masukan koordinat X titikmu saat ini: ");
  String? inputX2 = stdin.readLineSync();

  stdout.write("Masukan koordinat Y titikmu saat ini: ");
  String? inputY2 = stdin.readLineSync();

  // Fungsi untuk memparsing input dan menampilkan error jika invalid
  double? parseInput(String? input) {
    if (input == null || input.isEmpty) {
      print("Input tidak boleh kosong, Silahkan coba lagi!");
      return null;
    }
    double? parseValue = double.tryParse(input);
    if (parseValue == null) {
      print("Input tidak valid. Harap silahkan masukkan angka yang benar!");
    }
    return parseValue;
  }

  // Memparsing Input
  double? parseValue1 = parseInput(inputX1);
  double? parseValue2 = parseInput(inputY1);
  double? parseValue3 = parseInput(inputX2);
  double? parseValue4 = parseInput(inputY2);

  // Memastikan ke empat input valid sebelum melakukan perhitungan
  if (parseValue1 != null &&
      parseValue2 != null &&
      parseValue3 != null &&
      parseValue4 != null) {
    // Melakukan perhitungan Euclidean
    double result = sqrt(
        pow(parseValue3 - parseValue1, 2) + pow(parseValue4 - parseValue2, 2));
    print("Maka jarak dengan harta karun: ${result.toStringAsFixed(2)}");
  } else {
    print(
        "Perhitungan tidak bisa dilakukan karena ada input yang tidak valid.");
  }
}
