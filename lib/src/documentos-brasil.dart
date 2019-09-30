import 'cpf.dart';
import 'cnpj.dart';

const DocumentosBrasil documentosBrasil = const DocumentosBrasil();

class DocumentosBrasil {
  final Cpf cpf;
  final Cnpj cnpj;

  const DocumentosBrasil()
      : cpf = const Cpf(),
        cnpj = const Cnpj();
}
