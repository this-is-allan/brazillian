library brazillian.example;

import 'package:brazillian/brazillian.dart';

main() {
  String fakeCPF;
  for (var i = 0; i < 2; i++) {
    fakeCPF = brazillian.cpf.generate();
    print('$fakeCPF -> ${brazillian.cpf.format(fakeCPF)}');
  }

  String fakeCNPJ;
  for (var i = 0; i < 2; i++) {
    fakeCNPJ = brazillian.cnpj.generate();
    print('$fakeCNPJ -> ${brazillian.cnpj.format(fakeCNPJ)}');
  }
}
