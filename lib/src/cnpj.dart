import 'validators/cnpj_validator.dart';
import 'formatters/cnpj_formatter.dart';

class Cnpj {
  bool isValid(cnpj) => CnpjValidator.check(cnpj);
  String format(cnpj) => CnpjFormatter.mask(cnpj);
}
