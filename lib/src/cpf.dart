import 'validators/cpf_validator.dart';

class Cpf {
  bool isValid(cpf) => CpfValidator.check(cpf);
}
