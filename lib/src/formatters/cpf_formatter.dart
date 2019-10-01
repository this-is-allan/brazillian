class CpfFormatter {
  final String cpf;

  CpfFormatter(this.cpf);

  static String mask(String cpf) => cpf.replaceAllMapped(
      new RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})'),
      (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");
}
