import 'dart:math';
import 'package:brazillian/brazillian.dart';

import '../validators/cnpj_validator.dart';
import '../check_digit.dart';

class CnpjGenerator extends Cnpj {
  CnpjGenerator();

  static String generateCnpj(formatted, invalid) {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String cnpj = "";

    for (var i = 1; i < 5; i++) {
      cnpj += (min + rng.nextInt(max - min)).toString();
    }

    if (invalid) {
      cnpj += (10 + rng.nextInt(99 - 10)).toString();

      while (CnpjValidator.check(cnpj)) {
        cnpj = cnpj.replaceRange(cnpj.length - 2, cnpj.length, '');
        cnpj += (10 + rng.nextInt(99 - 10)).toString();
      }
    } else {
      cnpj += CheckDigit.cnpj(cnpj).toString();
    }

    return formatted ? Cnpj().format(cnpj) : cnpj;
  }
}
