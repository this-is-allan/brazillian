class Format {
  final numbers;

  Format(this.numbers);

  static removeSymbols(String numbers) {
    return numbers.replaceAll(RegExp(r'[^\w\s]+'), '');
  }
}
