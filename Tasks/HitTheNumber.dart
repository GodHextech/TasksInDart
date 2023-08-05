/*
--- Jogo de Adivinhação Numérica ---
Tente adivinhar o número entre 1 e 100.

Digite sua tentativa: 50
O número é menor do que 50.

Digite sua tentativa: 25
O número é maior do que 25.

Digite sua tentativa: 37
O número é menor do que 37.

Digite sua tentativa: 30
O número é maior do que 30.

Digite sua tentativa: 33
Parabéns! Você acertou o número em 5 tentativas.

Deseja jogar novamente? (S/N) S

Digite sua tentativa: 80
O número é menor do que 80.

Digite sua tentativa: 40
O número é maior do que 40.

Digite sua tentativa: 60
O número é menor do que 60.

Digite sua tentativa: 50
O número é maior do que 50.

Digite sua tentativa: 55
O número é maior do que 55.

Digite sua tentativa: 57
O número é menor do que 57.

Digite sua tentativa: 56
Parabéns! Você acertou o número em 7 tentativas.

Deseja jogar novamente? (S/N) N

Obrigado por jogar. Até logo!
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
''');
  print(' ');
  while (trying == true) {
    print('Digite sua tentativa: ');
    String input = stdin.readLineSync()!;
    var attempt = int.parse(input);
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
