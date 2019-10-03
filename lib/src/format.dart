class Format {
  final numbers;

  Format(this.numbers);

  static removeSymbols(String numbers) {
    return numbers.replaceAll(RegExp(r'[^\w\s]+'), '');
  }

  static String cpf(String cpf) => cpf.replaceAllMapped(
      new RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})'),
      (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");

  static String cnpj(String cnjp) => cnjp.replaceAllMapped(
      new RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})'),
      (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
}
