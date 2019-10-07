import 'package:test/test.dart';
import 'package:brazillian/brazillian.dart';

main() {
  var brazillian = new Brazillian();
  const cpf = "07909912412";
  const invalidCpf = "59340512923";

  group('cpf', () {
    test('should be abre to return valid CPF', () {
      expect(brazillian.cpf.isValid(cpf), true);
    });

    test('should be abre to return invalid CPF', () {
      expect(brazillian.cpf.isValid(invalidCpf), false);
    });

    test('should be able to format a CPF', () {
      expect(brazillian.cpf.format(cpf), "079.099.124-12");
    });

    test('should be able to generate a valid CPF', () {
      var randomCpf = brazillian.cpf.generate();
      expect(brazillian.cpf.isValid(randomCpf), true);
    });

    test('should be able to generate a invalid CPF', () {
      var randomCpf = brazillian.cpf.generate(invalid: true);
      expect(brazillian.cpf.isValid(randomCpf), false);
    });

    test('should be able to generate a formatted CPF', () {
      RegExp regExp = RegExp(r'^(\d{3}).(\d{3}).(\d{3})-(\d{2})$');
      var randomCpf = brazillian.cpf.generate(formatted: true);
      expect(regExp.hasMatch(randomCpf), true);
    });

    test('should be able to generate an unformatted CPF', () {
      RegExp regExp = RegExp(r'^(\d{11})$');
      var randomCpf = brazillian.cpf.generate(formatted: false);
      expect(regExp.hasMatch(randomCpf), true);
    });
  });
}
