import 'ClassPersonagem.dart';
import 'ClassArqueiro.dart';
import 'ClassGuerreiro.dart';
import 'ClassMago.dart';
import 'ClassInimigos.dart';
import 'ClassArmas.dart';
import 'dart:io';

String CriarPersonagem() {
  print('Qual o nome do seu personagem');
  String input = stdin.readLineSync()!;
  print('''Qual classe deseja:
  Guerreiro
  Arqueiro
  Mago''');
  String input2 = stdin.readLineSync()!;
  return input;
}

void Dialogo() {
  print('''Prefeito: Olá visitante, como posso chama-lo?''');
  print('''Olá me chamo ${nome}''');
  print('''Prefeito: Oh! prazer sou prefeito desta vila''');
}

var Vila;
void main() {
  CriarPersonagem();
  Personagem teste = new Personagem(input, input2);
''
  switch (Vila) {
    case 1:
      break;
    default:
  }
}
