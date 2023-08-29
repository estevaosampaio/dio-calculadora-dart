import 'package:test/test.dart';
import 'package:calculadora_dart/classes/pessoa.dart' as app;

void main() {
  test('CalcularIMC', () {
    final pessoa = app.Pessoa("Pedro", 70, 1.80);

    pessoa.calcularIMC();

    expect(() => pessoa.calcularIMC(), returnsNormally);
  });
}
