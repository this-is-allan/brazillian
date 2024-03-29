# Brazillian Data
[![Build Status](https://travis-ci.org/allancarlos123/brazillian.svg?branch=master)](https://travis-ci.org/allancarlos123/brazillian)
[![Coverage Status](https://coveralls.io/repos/github/allancarlos123/brazillian/badge.svg?branch=master)](https://coveralls.io/github/allancarlos123/brazillian?branch=master)
[![Faker on pub](https://img.shields.io/pub/v/brazillian.svg)](https://pub.dartlang.org/packages/brazillian)


A library for Dart that generates, validates and formats Brazilian data.

## Usage
A simple usage example:
```dart
import 'package:brazillian/brazillian.dart';

main() {
  var brazillian = new Brazillian();
  
  brazillian.cpf.generate());
  // 00000000000
  
  brazillian.cpf.generate(invalid: true);
  // 12345678912
  
  brazillian.cpf.generate(formatted: true);
  // 000.000.000-00
  
  brazillian.cpf.isValid('00000000000');
  // false
  
  brazillian.cpf.format('00000000000');
  // 000.000.000-00

  brazillian.cnpj.generate();
  // 00000000000000
  
  brazillian.cnpj.generate(invalid: true);
  // 00000000000101
  
  brazillian.cnpj.generate(formatted: true);
  // 00.000.000/0001-00
  
  brazillian.cnpj.isValid('00000000000000');
  // false
  
  brazillian.cnpj.format('00000000000000');
  // 00.000.000/0001-00
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/allancarlos123/brazillian/issues
