import 'ClassPersonagem.dart';
import 'ClassArqueiro.dart';
import 'ClassGuerreiro.dart';
import 'ClassMago.dart';
import 'ClassInimigos.dart';
import 'ClassArmas.dart';
import 'dart:io';

var Vila;
void main() {
  print('''
        !!BEM VINDO A JORNADA DO HERÓI EM TEXTO!!
1. COMEÇAR;
2. SAIR;                                                                                                        
 ''');
  /*===================================================*/
  String input3 = stdin.readLineSync()!;
  int start = int.parse(input3);
  switch (start) {
    case 1:
      print('UM JOVEM HERÓI ACORDA DE SEU SONO PROFUNDO E COMEÇA SUA JORNADA');
      print(' ');
      print('Qual o nome do seu personagem');
      String input = stdin.readLineSync()!;
      String nome = input;
      Personagem teste = new Personagem(nome, null);
      print('''Qual classe deseja:
  1. Guerreiro
  2. Arqueiro
  3. Mago''');
      String input2 = stdin.readLineSync()!;
      int choose = int.parse(input2);
      switch (choose) {
        case 1:
          teste.Classe = Guerreiro();
          print('Parabéns você se tornou um guerreiro');
          break;
        case 2:
          teste.Classe = Arqueiro();
          print('Parabéns você se tornou um arqueiro');
          break;
        case 3:
          teste.Classe = Mago();
          print('Parabéns você se tornou um mago');
          break;
      }

      /*===================================================*/
      print(' ');
      print('''Prefeito: Olá visitante, como posso chama-lo?''');
      print(
          '''Você: Olá! Me chamo ${teste.Nome}, sou um ${teste.Classe} em busca de aventuras.''');
      print('''Prefeito: Muito prazer! Sou o prefeito desta vila. 
  Bom saber que ainda há aventureiros nessa região, há várias missões no quadro de missões.
  Fique a vontade para ficar em nossa vila.''');
      print(
          '''Você: Que interessante! Vou dar uma olhada depois, muito obrigado pela recepção.''');
      print(' ');
      switch (Vila) {
        case 1:
          break;
        default:
      }
      break;
    case 2:
      print('OBRIGADO POR TESTAR NOSSO JOGO!!');
      break;
    default:
  }
}
