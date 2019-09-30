class Format {
  const Format();

  removeSymbols(String cpf) {
    return cpf.replaceAll(RegExp(r'[^\w\s]+'), '');
  }
}
