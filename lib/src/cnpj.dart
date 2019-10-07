import 'validators/cnpj_validator.dart';
import 'generators/cnpj_generator.dart';

class Cnpj {
  const Cnpj();

  bool isValid(cnpj) => CnpjValidator.check(cnpj);

  String generate({formatted = false, invalid = false}) =>
      CnpjGenerator.generateCnpj(formatted, invalid);

  String format(String cnpj) {
    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})');

    return cnpj.replaceAllMapped(
        regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
  }
}
