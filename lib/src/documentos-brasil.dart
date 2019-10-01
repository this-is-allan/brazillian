import 'cpf.dart';
import 'cnpj.dart';

DocumentosBrasil documentosBrasil = DocumentosBrasil();

class DocumentosBrasil {
  final Cpf cpf;
  final Cnpj cnpj;

  DocumentosBrasil()
      : cpf = Cpf(),
        cnpj = Cnpj();
}
