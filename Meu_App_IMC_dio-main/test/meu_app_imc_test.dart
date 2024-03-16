import 'package:meu_app_imc/service/calcular.dart';
import 'package:meu_app_imc/service/tratamento_saidas.dart';
import 'package:test/test.dart';

void main() {
  test('Status de Normal', () {
    expect(Calcular.imc(60.40, 1.60), 23.59);
  });

  group('Cálculo do IMC', () {
    final imcTest = {
      {"peso": 60.40, "altura": 1.60}: 23.59,
      {"peso": 70, "altura": 1.60}: 27.34,
      {"peso": 90, "altura": 1.60}: 35.16,
    };
    imcTest.forEach((key, value) {
      test('$key: $value', () {
        expect(
            Calcular.imc(double.parse(key["peso"].toString()),
                double.parse(key["altura"].toString())),
            value);
      });
    });
  });
  group('Status do IMC', () {
    final imcTest = {
      {"imc": 23.59}: 'Normal',
      {"imc": 27.34}: 'Sobrepeso',
      {"imc": 35.16}: 'Obesidade grau II',
    };
    imcTest.forEach((key, value) {
      test('$key: $value', () {
        expect(
            saidas(double.parse(key['imc'].toString())),
            value);
      });
    });
  });


}
