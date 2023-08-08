import '../ClassPersonagem.dart';

class Mago extends Personagem {
  var hp, armadura, arma, habilidades, exp, mana, poder;
  Mago({
    this.hp = 0,
    this.armadura = 0,
    this.mana = 10,
    this.arma = null,
    this.poder = 0,
    this.exp = 0,
  });

  @override
  void atack() {
    mana = mana - 1;
  }

  @override
  void profile() {
    print('mana atual:${mana}');
  }
}

void main() {}
