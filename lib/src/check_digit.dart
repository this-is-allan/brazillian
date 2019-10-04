import 'format.dart';

class CheckDigit {
  static cpf(String cpf) {
    String _cpfFormatted = Format.removeSymbols(cpf);
    String _digits;
    int _sum = 0;
    int _mod = 0;

    for (var i = 1; i <= 9; i++)
      _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (11 - i);

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;

    _cpfFormatted = _cpfFormatted + _mod.toString();
    _digits = _mod.toString();
    _sum = 0;
    _mod = 0;

    if (_cpfFormatted.length == 10) {
      for (var i = 1; i <= 10; i++)
        _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (12 - i);
    } else {
      for (var i = 1; i <= 10; i++)
        _sum = _sum + int.parse(_cpfFormatted.substring(i - 1, i)) * (12 - i);
    }

    _mod = (_sum * 10) % 11;

    if (_mod == 10 || _mod == 11) _mod = 0;

    _digits += _mod.toString();

    return _digits;
  }

  static cnpj(String cnpj) {
    String _cnpjFormatted = Format.removeSymbols(cnpj);
    String _digits;
    int _sum = 0;
    int _mod = 0;
    int _multiplicar = 5;

    for (var i = 1; i <= 12; i++) {
      if (_multiplicar < 2) _multiplicar = 9;

      _sum =
          _sum + int.parse(_cnpjFormatted.substring(i - 1, i)) * _multiplicar;
      _multiplicar--;
    }

    if (_sum % 11 < 2) {
      _mod = 0;
    } else {
      _mod = 11 - (_sum % 11);
    }

    _cnpjFormatted = _cnpjFormatted + _mod.toString();
    _digits = _mod.toString();
    _multiplicar = 6;
    _sum = 0;
    _mod = 0;

    if (_cnpjFormatted.length == 13) {
      for (var i = 1; i <= 13; i++) {
        if (_multiplicar < 2) _multiplicar = 9;

        _sum =
            _sum + int.parse(_cnpjFormatted.substring(i - 1, i)) * _multiplicar;
        _multiplicar--;
      }
    } else {
      for (var i = 1; i <= 13; i++) {
        if (_multiplicar < 2) _multiplicar = 9;
        _sum =
            _sum + int.parse(_cnpjFormatted.substring(i - 1, i)) * _multiplicar;
        _multiplicar--;
      }
    }

    if (_sum % 11 < 2) {
      _mod = 0;
    } else {
      _mod = 11 - (_sum % 11);
    }

    _digits += _mod.toString();

    return _digits;
  }
}
