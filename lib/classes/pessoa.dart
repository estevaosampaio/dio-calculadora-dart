import 'dart:math';

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  Pessoa(this._nome, this._peso, this._altura);

  String? getNome() {
    return _nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  double? getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double? getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  void calcularIMC() {
    try {
      double imc = _peso! / pow(_altura!, 2);

      if (imc < 16) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Magraza Grave');
      } else if (imc >= 16 && imc < 17) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Magraza moderada');
      } else if (imc >= 17 && imc < 18.5) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Magraza leve');
      } else if (imc >= 18.5 && imc < 25) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Saudável');
      } else if (imc >= 25 && imc < 30) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Sobrepeso');
      } else if (imc >= 30 && imc < 35) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Obesidade Grau I');
      } else if (imc >= 35 && imc < 40) {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Obesidade Grau II (severa)');
      } else {
        print(
            '$_nome, seu IMC é: ${imc.toStringAsFixed(2)} \nResultado: Obesidade Grau III (mórbida)');
      }
    } catch (e) {
      rethrow;
    }
  }
}
