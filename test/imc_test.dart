
import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  group('Teste da classe Pessoa', () {
    test('Calcula o IMC corretamente', () {
      // Arrange
      final pessoa = Pessoa(nome: 'João', peso: 70, altura: 1.75);

      // Act
      final imc = pessoa.calcularIMC();

      // Assert
      expect(
          imc,
          closeTo(22.86,
              0.01)); // Permite uma pequena margem de erro devido a arredondamentos
    });

    test('Classifica o IMC corretamente - Magreza leve', () {
      final pessoa = Pessoa(nome: 'Maria', peso: 45, altura: 1.60);
      expect(pessoa.classificarIMC(), equals('Magreza leve'));
    });

    test('Classifica o IMC corretamente - Sobrepeso', () {
      final pessoa = Pessoa(nome: 'Pedro', peso: 80, altura: 1.70);
      expect(pessoa.classificarIMC(), equals('Sobrepeso'));
    });

    // Adicione mais testes para cobrir outros casos, como:
    // - Magreza moderada
    // - Magreza leve
    // - Saudável
    // - Obesidade Grau I, II e III
    // - Valores de peso e altura inválidos (negativos, zero)
  });
}
