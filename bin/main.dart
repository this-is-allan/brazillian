import 'package:documentos_brasil/documentos-brasil.dart';

main(List<String> arguments) {
  // // CPF
  // print("CPF:");
  // print(documentosBrasil.cpf.format(documentosBrasil.cpf.generate()));
  // print(documentosBrasil.cpf.isValid(documentosBrasil.cpf.generate()));
  // print(documentosBrasil.cpf.isValid("07909912412"));
  // for (var i = 0; i < 25; i++) {
  // print(documentosBrasil.cpf.generate());
  // print(documentosBrasil.cpf.isValid(documentosBrasil.cpf.generate()));
  // }

  // print("");

  // print("CNPJ:");
  // // CPNPJ
  // print(documentosBrasil.cnpj.format(documentosBrasil.cnpj.generate()));
  // print(documentosBrasil.cnpj.isValid(documentosBrasil.cnpj.generate()));
  for (var i = 0; i < 5; i++) {
    print(documentosBrasil.cnpj.generate());
    //   var gerou = documentosBrasil.cnpj.generate();
  }
}
