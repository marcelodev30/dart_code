class Pessoa {
  String _nome = '';
  double _peso = 0.0;
  double _altura = 0.0;

 
  set setNome(nome) => _nome = nome;
 
  set setPeso(peso) => _peso = peso;
 
  set setAltura(altura) => _altura = altura;
  
  String get getNome => _nome;
  
  double get getPeso => _peso;
  
  double get getAltura => _altura;
  
  Pessoa(nome, peso, altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
  
  @override
  String toString() =>'Olá, meu nome é $_nome. Tenho ${_altura}m de altura e peso ${_peso}kg.';
  
}
