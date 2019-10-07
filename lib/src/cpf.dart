import 'validators/cpf_validator.dart';
import 'generators/cpf_generator.dart';

class Cpf {
  const Cpf();

  bool isValid(cpf) => CpfValidator.check(cpf);

  String generate({formatted = false, invalid = false}) =>
      CpfGenerator.generateCpf(formatted, invalid);

  String format(String cpf) {
    RegExp regExp = RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})$');

    return cpf.replaceAllMapped(
        regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");
  }
}
