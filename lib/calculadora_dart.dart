import 'package:calculadora_dart/classes/console_utils.dart';
import 'package:calculadora_dart/classes/pessoa.dart';

void execute() {
  String? nome;
  double? peso;
  double? altura;
  Pessoa pessoa = Pessoa(nome, peso, altura);

  do {
    nome = ConsoleUtils.lerStringComTexto('Digite o nome da pessoa: ');
    if (nome != null || nome!.isEmpty) {
      pessoa.setNome(nome);
    }
  } while (nome.isEmpty);

  do {
    peso = ConsoleUtils.lerDoubleComTexto('Digite o peso da pessoa (em kg): ');
    if (peso != null) {
      pessoa.setPeso(peso);
    }
  } while (peso == null);

  do {
    altura = ConsoleUtils.lerDoubleComTexto(
        'Digite a altura da pessoa (em metros): ');
    if (altura != null) {
      pessoa.setAltura(altura);
    }
  } while (altura == null);

  pessoa.calcularIMC();
}
