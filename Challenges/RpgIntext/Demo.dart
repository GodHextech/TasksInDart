import 'ClassPersonagem.dart';
import 'Classes/ClassArqueiro.dart';
import 'Classes/ClassGuerreiro.dart';
import 'Classes/ClassMago.dart';
//import 'ClassInimigos.dart';
//import 'ClassArmas.dart';
import 'dart:io';
void main() {
  var on = true;
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
          print('Parabéns você se tornou um guerreiro!');
          break;
        case 2:
          teste.Classe = Arqueiro();
          print('Parabéns você se tornou um arqueiro!');
          break;
        case 3:
          teste.Classe = Mago();
          print('Parabéns você se tornou um mago!');
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
      /*===================================================*/
      while (on = true) {
        print('''ESCOLHAS:
      1. VER QUADRO DE MISSÕES;
      2. IR AO FERREIRO;
      3. DORMIR;
      4. IR A LOJA;''');
        String input5 = stdin.readLineSync()!;
        int Vila = int.parse(input5);
        switch (Vila) {
          case 1:
            on = false;
            print('''--QUADRO DE MISSÕES--
            Missão 1: Matar uma sombra rastejante;
            Recompensas: 10 ouros, 2 níveis;
            
            Missão 2: Investigar uma dungeon;
            Recompensas: arma nova, 2 níveis, 10 ouros;
            
            Missão 3: Escolta de entrega;
            Recompensas: bilhete de melhoria no ferreiro, 10 ouros;
            ''');
            print(' ');
            print('''Ações: 
          1. Ir para alguma missão;
          2. Voltar depois;''');
            String input4 = stdin.readLineSync()!;
            int mission = int.parse(input4);
            switch (mission) {
              case 1:
                break;
              case 2:
                on = true;
                break;
              default:
            }
          case 2:
            print('''Ferreiro: Bem vindo! O que deseja?''');
            print('''Ações:
            1. Melhorar arma(+2 de ataque);
            2. Melhorar armadura(+2 de defesa);
            3. Sair.''');
            String input6 = stdin.readLineSync()!;
            int ferreiro = int.parse(input6);
            switch (ferreiro) {
              case 1:
                break;
              case 2:
                break;
              case 3:
                on = true;
                break;
            }
            break;
        }
      }
    case 2:
      print('OBRIGADO POR TESTAR NOSSO JOGO!!');
      break;
    default:
  }
}