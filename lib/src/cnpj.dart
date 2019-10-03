import 'generators/cnpj_generator.dart';

import 'validators/cnpj_validator.dart';
import 'formatters/cnpj_formatter.dart';

class Cnpj {
  CnpjGenerator cnpjGenerator = CnpjGenerator();

  bool isValid(cnpj) => CnpjValidator.check(cnpj);
  String format(cnpj) => CnpjFormatter.mask(cnpj);
  String generate([bool formatted = false]) =>
      cnpjGenerator.generate(formatted);
}
