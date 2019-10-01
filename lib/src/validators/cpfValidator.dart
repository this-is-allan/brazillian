import '../format.dart';

class CpfValidator {
  final String cpf;

  CpfValidator(this.cpf);

  static bool check(String cpf) {
    String _cpfFormatted = format.removeSymbols(cpf);
    int _sum = 0;
    int _mod = 0;

    if (_cpfFormatted.length != 11) return false;

    for (var i = 1; i <= 9; i++)
      _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (11 - i);

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;
    if (_mod != int.parse(_cpfFormatted.substring(9, 10))) return false;

    _sum = 0;

    for (var i = 1; i <= 10; i++)
      _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (12 - i);

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;
    if (_mod != int.parse(_cpfFormatted.substring(10, 11))) return false;

    return true;
  }
}
