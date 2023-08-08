import '../ClassPersonagem.dart';
import '../Objetos/ClassArmas.dart';

class Mago extends Personagem {
  var hp, armadura, arma, habilidades, exp, mana, poder, damage, hporiginal;
  Mago(
      {this.hp = 90,
      this.armadura = 10,
      this.mana = 10,
      this.arma = Staff,
      this.poder = 1,
      this.exp = 0,
      this.damage = 0,
      this.hporiginal = 90});

  @override
  void atack() {
    print('Você atacou, causando 5 de dano');
  }

  @override
  void subirnivel() {
    int total = 5;
    if (exp < total) {
      exp += 1;
    }
    if (exp == total) {
      print('Parabéns!, você subiu de nível');
      nivel += 1;
      print('Nível atual: ${nivel}');
      exp = 0;
      hp += 5;
      mana += 5;
      poder += 1;
    }
  }

  @override
  void profileclasse() {
    print('Hp: ${hp}');
    print('Armor: ${armadura}');
    print('Weapon: ${arma}');
    print('Exp: ${exp}');
    print('Manna: ${mana}');
    print('Power: ${poder}');
  }
}

void main() {}
