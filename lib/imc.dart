import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / (altura * altura);
  }

  String classificarIMC() {
    final imc = calcularIMC();

    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade Grau II (Severa)';
    } else {
      return 'Obesidade Grau III (mórbida)';
    }
  }
}

void main() {
  try {
    print('Digite o nome da pessoa: ');
    final nome = stdin.readLineSync()!;

    print('Digite o peso da pessoa (kg): ');
    final peso = double.parse(stdin.readLineSync()!);

    print('Digite a altura da pessoa (m): ');
    final altura = double.parse(stdin.readLineSync()!);

    final pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    final imc = pessoa.calcularIMC();
    final classificacao = pessoa.classificarIMC();

    print(
        '${pessoa.nome}, seu IMC é $imc e você está classificado como: $classificacao');
  } catch (e) {
    print('Erro: $e');
    print('Por favor, insira apenas valores numéricos para peso e altura.');
  }
}
