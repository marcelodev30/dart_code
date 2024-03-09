import 'package:meu_app_imc/Pessoa.dart';
import 'package:meu_app_imc/ler_dados.dart';
import 'package:meu_app_imc/tratamento_saidas.dart';

void main(List<String> arguments) {
  var usuario = Pessoa(
      Ler_dado('Digite seu Nome: ', 'String'),
      Ler_dado('Digite seu Peso: ', 'double'),
      Ler_dado('Digite sua Altura: ', 'double'));

  var imc = usuario.getPeso() / (usuario.getAltura() * usuario.getAltura());
  print(
      'Olá, ${usuario.getNome()} seu IMC é ${imc.toStringAsFixed(2)}, status de ${saidas(imc)}');
}
