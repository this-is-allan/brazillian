import 'format.dart';

class CheckDigit {
  static cpf(String cpf) {
    String _cpf = Format.removeSymbols(cpf);
    String digits;
    int sum = 0;
    int mod = 0;

    for (var i = 1; i <= 9; i++) {
      sum = sum + int.parse(_cpf.substring(i - 1, i)) * (11 - i);
    }

    mod = (sum * 10) % 11;

    if (mod == 10 || mod == 11) mod = 0;

    _cpf = _cpf + mod.toString();
    digits = mod.toString();
    sum = 0;
    mod = 0;

    if (_cpf.length == 10) {
      for (var i = 1; i <= 10; i++) {
        sum = sum + int.parse(_cpf.substring(i - 1, i)) * (12 - i);
      }
    } else {
      for (var i = 1; i <= 10; i++) {
        sum = sum + int.parse(_cpf.substring(i - 1, i)) * (12 - i);
      }
    }

    mod = (sum * 10) % 11;

    if (mod == 10 || mod == 11) mod = 0;

    digits += mod.toString();

    return digits;
  }

  static cnpj(String cnpj) {
    String _cnpj = Format.removeSymbols(cnpj);
    String digits;
    int sum = 0;
    int mod = 0;
    int multiplicar = 5;

    for (var i = 1; i <= 12; i++) {
      if (multiplicar < 2) multiplicar = 9;

      sum = sum + int.parse(_cnpj.substring(i - 1, i)) * multiplicar;
      multiplicar--;
    }

    if (sum % 11 < 2) {
      mod = 0;
    } else {
      mod = 11 - (sum % 11);
    }

    _cnpj = _cnpj + mod.toString();
    digits = mod.toString();
    multiplicar = 6;
    sum = 0;
    mod = 0;

    if (_cnpj.length == 13) {
      for (var i = 1; i <= 13; i++) {
        if (multiplicar < 2) multiplicar = 9;

        sum = sum + int.parse(_cnpj.substring(i - 1, i)) * multiplicar;
        multiplicar--;
      }
    } else {
      for (var i = 1; i <= 13; i++) {
        if (multiplicar < 2) multiplicar = 9;
        sum = sum + int.parse(_cnpj.substring(i - 1, i)) * multiplicar;
        multiplicar--;
      }
    }

    if (sum % 11 < 2) {
      mod = 0;
    } else {
      mod = 11 - (sum % 11);
    }

    digits += mod.toString();

    return digits;
  }
}
