/*
Claro! Aqui está uma tarefa mais desafiadora em Dart:

Tarefa: Criar um jogo de adivinhação numérica.

Descrição: Você deve criar um jogo em que o computador escolhe um número aleatório entre 1 e 100, e o jogador tem que adivinhar qual é esse número. O computador deve fornecer dicas ao jogador, informando se o número a ser adivinhado é maior ou menor do que a tentativa atual. O jogo deve continuar até que o jogador acerte o número ou decida sair.

Regras:

O programa deve gerar um número aleatório entre 1 e 100 (incluindo ambos).
O jogador deve fornecer uma tentativa válida em cada rodada (um número inteiro entre 1 e 100).
O programa deve verificar se a tentativa é válida (dentro do intervalo válido) e fornecer dicas caso contrário.
O programa deve contar o número de tentativas do jogador antes de acertar o número.
O programa deve permitir ao jogador sair do jogo a qualquer momento, se desejar.
*/
import 'dart:math';
import 'dart:io';

var trying = true;
var random = Random();
int numeroAleatorio = random.nextInt(100) + 1;
var att = 0;
void main() {
  print('''
--- Jogo de Adivinhação Numérica ---
Tente adivinhar o número entre 1 e 100.
Caso queira desistir antes de encontrar o resultado digite: 0.
''');
  print(' ');
  while (trying == true) {
    print('Digite sua tentativa: ');
    String input = stdin.readLineSync()!;
    var attempt = int.parse(input);
    if (attempt == 00) {
      trying = false;
      print('Uma pena ter desitido, tente novamente depois. Até logo!');
    } else {
      if ((attempt < 1) || (attempt > 100)) {
        print('numero invalido');
      } else {
        if (attempt < numeroAleatorio) {
          print('O número é maior do que ${attempt}.');
        } else if (attempt > numeroAleatorio) {
          print('O numero é menor do que ${attempt}');
        }
        att += 1;
        if (attempt == numeroAleatorio) {
          trying = false;
          print('Parabéns! Você acertou o número em ${att} tentativas.');
          print(' ');
          print('Deseja jogar novamente? (S/N)');
          String input2 = stdin.readLineSync()!;
          print(' ');
          if (input2.toLowerCase() == 's') {
            numeroAleatorio = random.nextInt(100) + 1;
            trying = true;
            att = 0;
          } else {
            print('Obrigado por jogar. Até logo!');
          }
        }
      }
    }
  }
}
