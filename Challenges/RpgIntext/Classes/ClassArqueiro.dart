import '../ClassPersonagem.dart';

class Arqueiro extends Personagem {
  var hp, armadura, arma, exp, habilidades, destreza, stamina;
  Arqueiro(
      {this.hp = 100,
      this.armadura = 20,
      this.arma = 'Bow',
      this.destreza = 1,
      this.exp = 0,
      this.habilidades = 0,
      this.stamina = 10});
  @override
  void profileclasse() {
    print('Hp: ${hp}');
    print('Armor: ${armadura}');
    print('Weapon: ${arma}');
    print('Exp: ${exp}');
    print('Strength: ${destreza}');
    print('Stamina: ${stamina}');
  }
}

void main() {}
