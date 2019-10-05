import '../format.dart';
import '../check_digit.dart';

class CpfValidator {
  final String cpf;

  CpfValidator(this.cpf);

  static bool check(String cpf) {
    final String _cpfFormatted = Format.removeSymbols(cpf);
    final String cpfDigits = CheckDigit.cpf(cpf);
    final RegExp blackList = RegExp(r'\b(\d)\1+\b');

    if (blackList.hasMatch(_cpfFormatted)) return false;
    if (_cpfFormatted.length != 11) return false;
    if (_cpfFormatted.substring(9, 11) != cpfDigits) return false;

    return true;
  }
}
