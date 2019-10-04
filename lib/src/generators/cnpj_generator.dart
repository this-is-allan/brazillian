import 'dart:math';
import '../check_digit.dart';

class CnpjGenerator {
  CnpjGenerator();

  String generate() {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String fakeCnpj = "";

    for (var i = 1; i < 5; i++) {
      fakeCnpj += (min + rng.nextInt(max - min)).toString();
    }

    fakeCnpj += CheckDigit.cnpj(fakeCnpj).toString();

    return fakeCnpj;
  }
}
