import 'dart:math';
import '../cpf.dart';
import '../validators/cpf_validator.dart';

import '../check_digit.dart';

class CpfGenerator extends Cpf {
  CpfGenerator();

  static String generateCpf(formatted, invalid) {
    var rng = new Random();
    int min = 100;
    int max = 999;
    String cpf = "";

    for (var i = 1; i < 4; i++) {
      cpf += (min + rng.nextInt(max - min)).toString();
    }

    if (invalid) {
      cpf += (10 + rng.nextInt(99 - 10)).toString();

      while (CpfValidator.check(cpf)) {
        cpf = cpf.replaceRange(cpf.length - 2, cpf.length, '');
        cpf += (10 + rng.nextInt(99 - 10)).toString();
      }
    } else {
      cpf += CheckDigit.cpf(cpf).toString();
    }

    return formatted ? Cpf().format(cpf) : cpf;
  }
}
