// ignore_for_file: file_names
class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

  // ignore: non_constant_identifier_names
  void SetNome(nome) {
    _nome = nome;
  }

  // ignore: non_constant_identifier_names
  void SetPeso(peso) {
    _peso = peso;
  }

  // ignore: non_constant_identifier_names
  void SetAltura(altura) {
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  Pessoa(nome, peso, altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
}
