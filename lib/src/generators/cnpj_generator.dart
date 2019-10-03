import 'dart:math';
import '../format.dart';
import '../check_digits/cnpj_check_digits.dart';

class CnpjGenerator {
  CnpjGenerator();

  String generate(formatted) {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String fakeCnpj = "";

    for (var i = 1; i < 5; i++) {
      fakeCnpj += (min + rng.nextInt(max - min)).toString();
    }

    fakeCnpj += CnpjCheckDigits.checkFirstDigit(fakeCnpj).toString();
    fakeCnpj += CnpjCheckDigits.checkSecondDigit(fakeCnpj).toString();

    if (formatted) {
      return Format.cnpj(fakeCnpj);
    } else {
      return fakeCnpj;
    }
  }
}
