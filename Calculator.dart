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

Obrigado por usar a calculadora. Até logo!*/
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
  print('informe um numero');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('informe outro numero');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print(Soma(a, b));
}

void InputSub() {
  print('informe um numero');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('informe outro numero');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print(Sub(a, b));
}

void InputMulti() {
  print('informe um numero');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('informe outro numero');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print(Multi(a, b));
}

void InputDiv() {
  print('informe um numero');
  String input1 = stdin.readLineSync()!;
  var a = double.parse(input1);
  print('informe outro numero');
  String input2 = stdin.readLineSync()!;
  var b = double.parse(input2);

  print(Div(a, b));
}

void continuar() {
  print('deseja continuar?(s/n)');
  String input = stdin.readLineSync()!;
  if (input == 's') {
    condicao = true;
  } else {
    condicao = false;
  }
}

var condicao = true;
var operacao = 4;

void main() {
  while (condicao == true) {
    switch (operacao) {
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
        break;
      default:
    }
  }

  /* print("Digite um número: ");

  // Usando stdin.readLineSync() para obter a entrada do usuário
  String input = stdin.readLineSync()!;

  // Convertendo a entrada do usuário para um número inteiro
  int numero = int.parse(input);

  // Realizando alguma operação com o número informado
  int resultado = numero * 2;

  print("O dobro do número informado é: $resultado");*/
}
