import 'ClassPersonagem.dart';
import 'Classes/ClassArqueiro.dart';
import 'Classes/ClassGuerreiro.dart';
import 'Classes/ClassMago.dart';
//import 'ClassInimigos.dart';
//import 'ClassArmas.dart';
import 'dart:io';

void main() {
  var on = true;
  Personagem teste = new Personagem();
  print(
      '==============================================================================');

  print('''
        !!BEM VINDO A JORNADA DO HERÓI EM TEXTO!!
1. COMEÇAR;
2. SAIR; 
''');

  /*===================================================*/
  String input3 = stdin.readLineSync()!;
  int start = int.parse(input3);
  print(
      '==============================================================================');
  switch (start) {
    case 1:
      print(' ');
      print(
          '==============================================================================');

      print('UM JOVEM HERÓI ACORDA DE SEU SONO PROFUNDO E COMEÇA SUA JORNADA');

      print(
          '==============================================================================');

      print(' ');
      stdout.write('Qual o nome do seu personagem: ');
      String input = stdin.readLineSync()!;
      String nome = input;
      print('''Qual classe deseja:
      1. Guerreiro
      2. Arqueiro
      3. Mago''');
      String input2 = stdin.readLineSync()!;
      int choose = int.parse(input2);
      print('');
/*===================================================*/
      print(
          '==============================================================================');

      switch (choose) {
        case 1:
          teste = new Guerreiro();
          teste.classe = 'Guerreiro';
          teste.nome = nome;
          print('Parabéns você se tornou um guerreiro!');
          teste.profileclasse();
          break;
        case 2:
          teste = new Arqueiro();
          teste.classe = 'Arqueiro';
          teste.nome = nome;
          print('Parabéns você se tornou um arqueiro!');
          teste.profileclasse();
          break;
        case 3:
          teste = new Mago();
          teste.classe = 'Mago';
          teste.nome = nome;
          print('Parabéns você se tornou um mago!');
          teste.profileclasse();
          break;
      }
      print(
          '==============================================================================');

/*===================================================*/
      print(' ');
      print(' ');
      print(' ');
      print(' ');
      print(
          '==============================================================================');
      print('''Você acorda perto de um vilareijo sem saber qual seu destino;
             Decide ir até o vilareijo...''');
      print(
          '==============================================================================');

      print(' ');
      print(' ');
      print(' ');
      print(' ');
      print(
          '==============================================================================');
      print('''Prefeito: Olá visitante, como posso chama-lo?''');
      print(
          '''Você: Olá! Me chamo ${teste.nome}, sou um ${teste.classe} em busca de aventuras.''');
      print('''Prefeito: Muito prazer! Sou o prefeito desta vila. 
  Bom saber que ainda há aventureiros nessa região, há várias missões no quadro de missões.
  Fique a vontade para ficar em nossa vila.''');
      print(
          '''Você: Que interessante! Vou dar uma olhada depois, muito obrigado pela recepção.''');
      print(
          '==============================================================================');
/*===================================================*/
      while (on = true) {
        print('''ESCOLHAS:
1. VER QUADRO DE MISSÕES;
2. IR AO FERREIRO;
3. DORMIR;
4. IR A LOJA;
5. Treinar;
6. Ver perfil;
''');
        String input5 = stdin.readLineSync()!;
        int Vila = int.parse(input5);
        print(' ');
        switch (Vila) {
          case 1:
            on = false;
            print('''--------QUADRO DE MISSÕES--------
Missão 1: Matar uma sombra rastejante;
Recompensas: 10 ouros, 2 níveis;
            
Missão 2: Investigar uma dungeon;
Recompensas: arma nova, 2 níveis, 10 ouros;
            
Missão 3: Escolta de entrega;
Recompensas: bilhete de melhoria no ferreiro, 10 ouros;
            ''');
            print('--------------------------------------');
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
          case 3:
            break;
          case 4:
            break;
          case 5:
            teste.subirnivel();
            print('adquiriu uma exp');
            print('Exp atual: ${teste.exp}');
            on = true;
            break;
          case 6:
            print(' ');
            print('-----------Perfil-----------');
            teste.profile();
            teste.profileclasse();
            print(' ');
            break;
        }
      }
    case 2:
      print('OBRIGADO POR TESTAR NOSSO JOGO!!');
      break;
    default:
  }
}
