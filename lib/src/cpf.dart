import 'validators/cpfValidator.dart';

class Cpf {
  bool isValid(cpf) => CpfValidator.check(cpf);
}
