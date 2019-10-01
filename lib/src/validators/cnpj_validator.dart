import '../format.dart';

class CnpjValidator {
  final String cnpj;

  CnpjValidator(this.cnpj);

  static bool check(String cnpj) {
    String _cnpjFormatted = format.removeSymbols(cnpj);
    int sum = 0;
    int mod = 0;
    int multiplicar = 5;

    if (_cnpjFormatted.length != 14) return false;

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

    if (mod != int.parse(_cnpjFormatted.substring(12, 13))) return false;

    sum = 0;
    multiplicar = 6;

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

    if (mod != int.parse(_cnpjFormatted.substring(13, 14))) return false;

    return true;
  }
}