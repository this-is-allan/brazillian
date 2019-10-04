import 'dart:math';
import '../check_digit.dart';
import '../format.dart';

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

    fakeCnpj += CheckDigit.cnpj(fakeCnpj).toString();

    return formatted ? Format.cnpj(fakeCnpj) : fakeCnpj;
  }
}
