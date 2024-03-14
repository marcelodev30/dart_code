import 'package:meu_app_imc/models/Pessoa.dart';
import 'package:meu_app_imc/service/ler_dados.dart';
import 'package:meu_app_imc/service/tratamento_saidas.dart';

void main(List<String> arguments) {
  var usuario = Pessoa(
      LerConsole.nome(),
      LerConsole.peso(),
      LerConsole.altura()
      );

  var imc = usuario.getPeso() / (usuario.getAltura() * usuario.getAltura());
  print(
      'Olá, ${usuario.getNome()} seu IMC é ${imc.toStringAsFixed(2)}, status de ${saidas(imc)}');
}
