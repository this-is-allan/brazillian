import '../format.dart';
import '../check_digit.dart';

class CpfValidator {
  static bool check(String cpf) {
    final String _cpf = Format.removeSymbols(cpf);
    final String digits = CheckDigit.cpf(cpf);
    final RegExp blackList = RegExp(r'\b(\d)\1+\b');

    if (blackList.hasMatch(_cpf)) return false;
    if (_cpf.length != 11) return false;
    if (_cpf.substring(9, 11) != digits) return false;

    return true;
  }
}
