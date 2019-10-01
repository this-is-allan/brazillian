import 'validators/cnpj_validator.dart';

class Cnpj {
  bool isValid(cnpj) => CnpjValidator.check(cnpj);
}
