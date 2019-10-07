import 'package:test/test.dart';
import 'package:brazillian/brazillian.dart';

main() {
  var brazillian = new Brazillian();
  const cnpj = "67698775000153";
  const invalidCnpj = "67618775000153";

  group('cnpj', () {
    test('should be abre to return valid CNPJ', () {
      expect(brazillian.cnpj.isValid(cnpj), true);
    });

    test('should be abre to return invalid CNPJ', () {
      expect(brazillian.cnpj.isValid(invalidCnpj), false);
    });

    test('should be able to format a CNPJ', () {
      expect(brazillian.cnpj.format(cnpj), "67.698.775/0001-53");
    });

    test('should be able to generate a valid CNPJ', () {
      var randomCnpj = brazillian.cnpj.generate();
      expect(brazillian.cnpj.isValid(randomCnpj), true);
    });

    test('should be able to generate a invalid CNPJ', () {
      var randomCnpj = brazillian.cnpj.generate(invalid: true);
      expect(brazillian.cnpj.isValid(randomCnpj), false);
    });

    test('should be able to generate a formatted CNPJ', () {
      RegExp regExp = RegExp(r'^(\d{2}).(\d{3}).(\d{3})/(\d{4})-(\d{2})$');
      var randomCnpj = brazillian.cnpj.generate(formatted: true);
      expect(regExp.hasMatch(randomCnpj), true);
    });

    test('should be able to generate an unformatted CNPJ', () {
      RegExp regExp = RegExp(r'^(\d{14})$');
      var randomCnpj = brazillian.cnpj.generate(formatted: false);
      expect(regExp.hasMatch(randomCnpj), true);
    });
  });
}
