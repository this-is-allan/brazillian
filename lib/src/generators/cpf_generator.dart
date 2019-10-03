import 'dart:math';
import '../format.dart';
import '../check_digits/cpf_check_digits.dart';

class CpfGenerator {
  CpfGenerator();

  static String generateCpf() {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String fakeCpf = "";

    for (var i = 1; i < 4; i++) {
      fakeCpf += (min + rng.nextInt(max - min)).toString();
    }

    fakeCpf += CpfCheckDigits.checkFirstDigit(fakeCpf).toString();
    fakeCpf += CpfCheckDigits.checkSecondDigit(fakeCpf).toString();

    return fakeCpf;
  }
}
