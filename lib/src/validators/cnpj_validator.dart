import '../format.dart';
import '../check_digits/cnpj_check_digits.dart';

class CnpjValidator {
  final String cnpj;

  CnpjValidator(this.cnpj);

  static bool check(String cnpj) {
    String _cnpjFormatted = Format.removeSymbols(cnpj);
    int firstDigit = CnpjCheckDigits.checkFirstDigit(cnpj);
    int secondDigit = CnpjCheckDigits.checkSecondDigit(cnpj);

    if (_cnpjFormatted.length != 14) return false;

    if (firstDigit != int.parse(_cnpjFormatted.substring(12, 13))) return false;
    if (secondDigit != int.parse(_cnpjFormatted.substring(13, 14)))
      return false;

    return true;
  }
}
