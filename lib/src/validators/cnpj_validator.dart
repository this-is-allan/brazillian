import '../format.dart';
import '../check_digit.dart';

class CnpjValidator {
  final String cnpj;

  CnpjValidator(this.cnpj);

  static bool check(String cnpj) {
    final String _cnpjFormatted = Format.removeSymbols(cnpj);
    final String cnpjDigits = CheckDigit.cnpj(cnpj);

    if (_cnpjFormatted.length != 14) return false;
    if (_cnpjFormatted.substring(12, 14) != cnpjDigits) return false;

    return true;
  }
}
