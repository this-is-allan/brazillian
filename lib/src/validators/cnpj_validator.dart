import '../format.dart';
import '../check_digit.dart';

class CnpjValidator {
  static bool check(String cnpj) {
    final String _cnpjFormatted = Format.removeSymbols(cnpj);
    final String cnpjDigits = CheckDigit.cnpj(cnpj);
    final RegExp blackList = RegExp(r'\b(\d)\1+\b');

    if (blackList.hasMatch(_cnpjFormatted)) return false;
    if (_cnpjFormatted.length != 14) return false;
    if (_cnpjFormatted.substring(12, 14) != cnpjDigits) return false;

    return true;
  }
}
