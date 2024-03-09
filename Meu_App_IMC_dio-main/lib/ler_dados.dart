import 'dart:convert';
import 'dart:io';

// ignore: non_constant_identifier_names
dynamic Ler_dado(String Texto, String tipo_saida) {
  dynamic saida;
  print(Texto);
  switch (tipo_saida) {
    case 'String':
      saida = stdin.readLineSync(encoding: utf8);
      break;
    case 'double':
      saida = double.parse(stdin.readLineSync(encoding: utf8) ?? '0');
      break;
  }
  return saida;
}
