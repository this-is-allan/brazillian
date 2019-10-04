import 'dart:math';
import 'package:documentos_brasil/src/validators/cpf_validator.dart';

import '../check_digit.dart';
import '../format.dart';

class CpfGenerator {
  CpfGenerator();

  static String generateCpf(formatted, invalid) {
    var rng = new Random();
    bool isValid;
    int min = 100;
    int max = 999;
    String fakeCpf = "";

    for (var i = 1; i < 4; i++) {
      fakeCpf += (min + rng.nextInt(max - min)).toString();
    }

    if (invalid) {
      fakeCpf += (10 + rng.nextInt(99 - 10)).toString();

      while (CpfValidator.check(fakeCpf)) {
        fakeCpf = fakeCpf.replaceRange(fakeCpf.length - 2, fakeCpf.length, '');
        fakeCpf += (10 + rng.nextInt(99 - 10)).toString();
      }
    } else {
      fakeCpf += CheckDigit.cpf(fakeCpf).toString();
    }

    return formatted ? Format.cpf(fakeCpf) : fakeCpf;
  }
}
