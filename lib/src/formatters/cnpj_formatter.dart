class CnpjFormatter {
  final String cnjp;

  CnpjFormatter(this.cnjp);

  static String mask(String cnjp) => cnjp.replaceAllMapped(
      new RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})'),
      (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
}
