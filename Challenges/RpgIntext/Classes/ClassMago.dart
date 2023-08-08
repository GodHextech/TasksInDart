import '../ClassPersonagem.dart';

class Mago extends Personagem {
  var hp, armadura, arma, habilidades, exp, mana, poder;
  Mago({
    this.hp = 90,
    this.armadura = 10,
    this.mana = 10,
    this.arma = 'Cajado',
    this.poder = 1,
    this.exp = 0,
  });

  @override
  void atack() {}

  @override
  void profile() {
    print('Hp: ${hp}');
    print('Armor: ${armadura}');
    print('Weapon: ${arma}');
    print('Exp: ${exp}');
    print('Manna: ${mana}');
    print('Power: ${poder}');
  }
}

void main() {}
