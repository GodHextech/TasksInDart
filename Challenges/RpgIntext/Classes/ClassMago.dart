import '../ClassPersonagem.dart';

class Mago extends Personagem {
  var Hp, Armadura, Arma, Habilidades, Exp, Mana, Poder;
  Mago({
    this.Hp = 0,
    this.Armadura = 0,
    this.Mana = 10,
    this.Arma = null,
    this.Poder = 0,
    this.Exp = 0,
  });

  @override
  void Atack() {
    Mana = Mana - 1;
  }

  @override
  void profile() {
    print('mana atual:${Mana}');
  }
}

void main() {}
