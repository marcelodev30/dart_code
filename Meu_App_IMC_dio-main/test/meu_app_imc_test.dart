
import 'package:meu_app_imc/service/calcular.dart';
import 'package:test/test.dart';

void main() {
  
  test('Status de Normal', () {
    expect(Calcular.imc(60.40,1.60),23.59);
});
 test('Status de Sobrepeso', () {
    expect(Calcular.imc(70,1.60),27.34);
});
 test('Status de Obesida de grau II', () {
    expect(Calcular.imc(90,1.60),35.16);
});

}
