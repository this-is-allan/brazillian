import '../format.dart';

class CpfCheckDigits {
  final String cpf;

  CpfCheckDigits(this.cpf);

  static checkFirstDigit(cpf) {
    String _cpfFormatted = Format.removeSymbols(cpf);
    int _sum = 0;
    int _mod = 0;

    for (var i = 1; i <= 9; i++)
      _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (11 - i);

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;

    return _mod;
  }

  static checkSecondDigit(cpf) {
    String _cpfFormatted = Format.removeSymbols(cpf);
    int _sum = 0;
    int _mod = 0;

    for (var i = 1; i <= 10; i++)
      _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (12 - i);

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;

    return _mod;
  }
}
