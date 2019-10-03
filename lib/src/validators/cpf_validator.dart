import '../format.dart';
import '../check_digits/cpf_check_digits.dart';

class CpfValidator {
  final String cpf;

  CpfValidator(this.cpf);

  static bool check(String cpf) {
    String _cpfFormatted = format.removeSymbols(cpf);
    int firstDigit = CpfCheckDigits.checkFirstDigit(cpf);
    int secondDigit = CpfCheckDigits.checkSecondDigit(cpf);

    if (_cpfFormatted.length != 11) return false;

    if (firstDigit != int.parse(_cpfFormatted.substring(9, 10))) return false;
    if (secondDigit != int.parse(_cpfFormatted.substring(10, 11))) return false;
    return true;
  }
}
