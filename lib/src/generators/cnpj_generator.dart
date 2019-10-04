import 'dart:math';
import '../validators/cnpj_validator.dart';
import '../check_digit.dart';
import '../format.dart';

// import '../cnpj.dart';

class CnpjGenerator {
  CnpjGenerator();

  String generate(formatted, invalid) {
    var rng = new Random();
    bool isValid;
    int min = 100;
    int max = 999;
    String fakeCnpj = "";

    for (var i = 1; i < 5; i++) {
      fakeCnpj += (min + rng.nextInt(max - min)).toString();
    }

    if (invalid) {
      fakeCnpj += (10 + rng.nextInt(99 - 10)).toString();

      while (CnpjValidator.check(fakeCnpj)) {
        fakeCnpj =
            fakeCnpj.replaceRange(fakeCnpj.length - 2, fakeCnpj.length, '');
        fakeCnpj += (10 + rng.nextInt(99 - 10)).toString();
      }
    } else {
      fakeCnpj += CheckDigit.cnpj(fakeCnpj).toString();
    }

    return formatted ? Format.cnpj(fakeCnpj) : fakeCnpj;
  }
}
