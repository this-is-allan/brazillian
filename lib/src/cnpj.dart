validarCnpj(String cnpj) {
  Cnpj cnpjInstance = Cnpj();
  int sum = 0;
  int mod = 0;
  int multiplicar = 5;
  String cnpjFormatted = cnpjInstance.removeSymbols(cnpj);

  if (cnpj.length != 11) return false;

  for (var i = 1; i <= 12; i++) {
    if (multiplicar < 2) multiplicar = 9;

    sum = sum + int.parse(cnpjFormatted.substring(i - 1, i)) * multiplicar;
    multiplicar--;
  }

  if (sum % 11 < 2) {
    mod = 0;
  } else {
    mod = 11 - (sum % 11);
  }

  if (mod != int.parse(cnpjFormatted.substring(12, 13))) return false;

  sum = 0;
  multiplicar = 6;

  for (var i = 1; i <= 13; i++) {
    if (multiplicar < 2) multiplicar = 9;
    sum = sum + int.parse(cnpjFormatted.substring(i - 1, i)) * multiplicar;
    multiplicar--;
  }

  if (sum % 11 < 2) {
    mod = 0;
  } else {
    mod = 11 - (sum % 11);
  }

  if (mod != int.parse(cnpjFormatted.substring(13, 14))) return false;

  return true;
}

class Cnpj {
  const Cnpj();

  String removeSymbols(cpf) => cpf.replaceAll(RegExp(r'[^\w\s]+'), '');

  String validate(cnpj) => validarCnpj(cnpj).toString();
}
