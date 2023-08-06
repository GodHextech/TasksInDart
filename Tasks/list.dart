/*
--- Gerenciamento de Tarefas (To-Do List) ---
Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 1

Digite o nome da nova tarefa: Comprar leite

Tarefa 'Comprar leite' adicionada com sucesso!

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 1

Digite o nome da nova tarefa: Pagar contas

Tarefa 'Pagar contas' adicionada com sucesso!

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 3

Tarefas pendentes:
1. Comprar leite
2. Pagar contas

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 2

Digite o número da tarefa que deseja marcar como concluída: 1

Tarefa 'Comprar leite' marcada como concluída!

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair     

Digite sua opção: 4

Tarefas concluídas:
1. Comprar leite

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 6

Total de tarefas pendentes: 1
Total de tarefas concluídas: 1

Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair

Digite sua opção: 0

Obrigado por usar o Gerenciamento de Tarefas. Até logo!
*/
import 'dart:io';

var list = [];
var listcheck = [];

void TarefasPendentes() {
  for (var i = 0; i < list.length; i++) {
    print('${i}. ${list[i]}');
  }
}

void MarcarConcluido() {
  print('Digite o número da tarefa que deseja marcar como concluída: ');
  String input = stdin.readLineSync()!;
  int check = int.parse(input);
  String tarefa = list[check];
  print(' ');
  print('Tarefa ${list[check]} marcada como concluída!');
  listcheck.insert(listcheck.length, tarefa);
  list.remove(list[check]);
}

void TarefasCheck() {
  for (var i = 0; i < listcheck.length; i++) {
    print('${i}. ${listcheck[i]}');
  }
}

void RemoveTask() {
  print(
      'Deseja remover tarefa da lista de concluídas ou pendentes?(pendentes = 0);(concluídas = 1)');
  String input = stdin.readLineSync()!;
  int choose = int.parse(input);
  if (choose == 0) {
    print('Qual o número da tarefa que deseja remover? ');
    String input2 = stdin.readLineSync()!;
    int check = int.parse(input2);
    list.remove('${list[check]}');
  } else if (choose == 1) {
    print('Qual o número da tarefa que deseja remover? ');
    String input2 = stdin.readLineSync()!;
    int check = int.parse(input2);
    list.remove('${listcheck[check]}');
  }
}

var on = true;
void main() {
  while (on == true) {
    print(' ');
    print(''' 
    Opções:
1 - Adicionar tarefa
2 - Marcar tarefa como concluída
3 - Exibir tarefas pendentes
4 - Exibir tarefas concluídas
5 - Remover tarefa
6 - Exibir número total de tarefas
0 - Sair
    ''');
    String input = stdin.readLineSync()!;
    var option = int.parse(input);
    switch (option) {
      case 1:
        print(' ');
        print('Digite o nome da nova tarefa: ');
        String input = stdin.readLineSync()!;
        String tarefa = input;
        list.insert(list.length, tarefa);
        print('Tarefa adiciona com sucesso!');
        break;
      case 2:
        MarcarConcluido();
        break;
      case 3:
        print(' ');
        print('Tarefas pendentes: ');
        TarefasPendentes();
        break;
      case 4:
        print(' ');
        print('Tarefas concluídas: ');
        TarefasCheck();

        break;
      case 5:
        RemoveTask();
        break;
      case 6:
        print(' ');
        print('Total de tarefas pendentes: ${list.length}');
        print('Total de tarefas concluídas: ${listcheck.length}');
        break;
      case 0:
        print('Obrigado por usar o Gerenciamento de Tarefas. Até logo!');
        on = false;
        break;

      default:
    }
  }
}
