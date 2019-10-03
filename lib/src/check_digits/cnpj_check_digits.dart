import '../format.dart';

class CnpjCheckDigits {
  final String cpf;

  CnpjCheckDigits(this.cpf);

  static checkFirstDigit(cnpj) {
    String _cnpjFormatted = format.removeSymbols(cnpj);
    int sum = 0;
    int mod = 0;
    int multiplicar = 5;

    for (var i = 1; i <= 12; i++) {
      if (multiplicar < 2) multiplicar = 9;

      sum = sum + int.parse(_cnpjFormatted.substring(i - 1, i)) * multiplicar;
      multiplicar--;
    }

    if (sum % 11 < 2) {
      mod = 0;
    } else {
      mod = 11 - (sum % 11);
    }

    return mod;
  }

  static checkSecondDigit(cnpj) {
    String _cnpjFormatted = format.removeSymbols(cnpj);
    int sum = 0;
    int mod = 0;
    int multiplicar = 6;

    for (var i = 1; i <= 13; i++) {
      if (multiplicar < 2) multiplicar = 9;
      sum = sum + int.parse(_cnpjFormatted.substring(i - 1, i)) * multiplicar;
      multiplicar--;
    }

    if (sum % 11 < 2) {
      mod = 0;
    } else {
      mod = 11 - (sum % 11);
    }

    return mod;
  }
}
