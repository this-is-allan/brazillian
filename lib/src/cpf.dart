import 'validators/cpf_validator.dart';
import 'generators/cpf_generator.dart';
import 'format.dart';

class Cpf {
  bool isValid(cpf) => CpfValidator.check(cpf);

  String format(cpf) => Format.cpf(cpf);

  String generate({formatted = false, invalid = false}) =>
      CpfGenerator.generateCpf(formatted, invalid);
}
