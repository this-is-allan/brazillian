library brazillian.example;

import 'package:brazillian/brazillian.dart';

main() {
  // [CPF]
  // Generate a valid CPF
  print(brazillian.cpf.generate());
  // Generate a invalid CPF
  print(brazillian.cpf.generate(invalid: true));
  // Generate a formatted CPF
  print(brazillian.cpf.generate(formatted: true));
  // Validates the generated CPF
  print(brazillian.cpf.isValid(brazillian.cpf.generate()));
  // Formats a generated CPF
  print(brazillian.cpf.format(brazillian.cpf.generate()));

  // [CNPJ]
  // Generate a valid CPF
  print(brazillian.cnpj.generate());
  // Generate a invalid CPF
  print(brazillian.cnpj.generate(invalid: true));
  // Generate a formatted CPF
  print(brazillian.cnpj.generate(formatted: true));
  // Validates the generated CPF
  print(brazillian.cnpj.isValid(brazillian.cnpj.generate()));
  // Formats a generated CPF
  print(brazillian.cnpj.format(brazillian.cnpj.generate()));
}
