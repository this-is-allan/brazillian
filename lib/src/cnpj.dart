import 'generators/cnpj_generator.dart';
import 'validators/cnpj_validator.dart';
import 'format.dart';

class Cnpj {
  CnpjGenerator cnpjGenerator = CnpjGenerator();

  bool isValid(cnpj) => CnpjValidator.check(cnpj);

  String format(cnpj) => Format.cnpj(cnpj);

  String generate([formatted = false]) => cnpjGenerator.generate(formatted);
}
