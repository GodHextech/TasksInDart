/*
--- Calculadora Simples ---
Escolha a operação:
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

Digite sua escolha: 1

Digite o primeiro número: 10
Digite o segundo número: 5

Resultado: 10 + 5 = 15

Deseja continuar? (S/N) S

Escolha a operação:
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

Digite sua escolha: 4

Digite o primeiro número: 10
Digite o segundo número: 0

Erro: Divisão por zero não é permitida.

Deseja continuar? (S/N) S

Escolha a operação:
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair

Digite sua escolha: 5
Obrigado por usar a calculadora. Até logo!
*/

import 'dart:io';

double Soma(double a, double b) {
  double Resultado = a + b;
  return Resultado;
}

double Sub(double a, double b) {
  double Resultado = a - b;
  return Resultado;
}

double Multi(double a, double b) {
  double Resultado = a * b;
  return Resultado;
}

double Div(double a, double b) {
  double Resultado = a / b;
  return Resultado;
}

void InputSoma() {
  print('Digite o primeiro número: ');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('Digite o segundo número: ');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print('Resultado: ${a} + ${b} = ${Soma(a, b)}');
}

void InputSub() {
  print('Digite o primeiro número: ');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('Digite o segundo número: ');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print('Resultado: ${a} - ${b} = ${Sub(a, b)}');
}

void InputMulti() {
  print('Digite o primeiro número: ');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('Digite o segundo número: ');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print('Resultado: ${a} * ${b} = ${Multi(a, b)}');
}

void InputDiv() {
  print('Digite o primeiro número: ');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('Digite o segundo número: ');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);
  if (b == 0) {
    print('Erro: Divisão por zero não é permitida.');
  } else {
    print('Resultado: ${a} / ${b} = ${Div(a, b)}');
  }
}

void continuar() {
  print('Deseja continuar? (S/N) ');
  String input = stdin.readLineSync()!;
  if (input.toLowerCase() == 's') {
    condicao = true;
  } else {
    condicao = false;
  }
}

var condicao = true;
void main() {
  while (condicao == true) {
    print('''
--- Calculadora Simples ---
Escolha a operação:
1 - Adição
2 - Subtração
3 - Multiplicação
4 - Divisão
5 - Sair
''');
    print('Digita sua escolha: ');
    String InputOperation = stdin.readLineSync()!;
    int operation = int.parse(InputOperation);

    print(' ');

    switch (operation) {
      case 1:
        InputSoma();
        continuar();
        break;
      case 2:
        InputSub();
        continuar();
        break;
      case 3:
        InputMulti();
        continuar();
        break;
      case 4:
        InputDiv();
        continuar();
        break;
      case 5:
        print('Obrigado por usar a calculadora. Até logo!');
        condicao = false;
        break;
      default:
    }
  }
}
