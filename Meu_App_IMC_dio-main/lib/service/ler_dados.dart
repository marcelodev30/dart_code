import 'dart:convert';
import 'dart:io';

class LerConsole{

static String nome(){
  print('Digite seu Nome: ');
  return _lerDado();
}
static double peso(){
  print('Digite seu Peso: ');
  return _lerNumero();
}
static double altura(){
  print('Digite seu Altura: ');
  return _lerNumero();
}


static String _lerDado(){
  return stdin.readLineSync(encoding: utf8)??'';
}

static double _lerNumero(){
    while (true){
      try{
        return double.parse(_lerDado());
      }
      catch(e){
        print('-'*20);
        print('Número inválido!!!');
        print('Digitel Novamente!');
      }   
    }
}

}