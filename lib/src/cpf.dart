import 'validators/cpf_validator.dart';
import 'formatters/cpf_formatter.dart';
import 'generators/cpf_generator.dart';

class Cpf {
  bool isValid(cpf) => CpfValidator.check(cpf);

  String format(cpf) => CpfFormatter.mask(cpf);

  String generate() => CpfGenerator.generateCpf();
}
