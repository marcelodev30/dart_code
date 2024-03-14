import 'package:meu_app_imc/models/Pessoa.dart';
import 'package:meu_app_imc/service/calcular.dart';
import 'package:meu_app_imc/service/ler_dados.dart';
import 'package:meu_app_imc/service/tratamento_saidas.dart';

void main(List<String> arguments) {
  final usuario = Pessoa(
      LerConsole.nome(),
      LerConsole.peso(),
      LerConsole.altura()
      );

  final imc = Calcular.imc(usuario.getPeso(),usuario.getAltura());
  print(
      'Olá, ${usuario.getNome()} seu IMC é $imc, status de ${saidas(imc)}');
}
