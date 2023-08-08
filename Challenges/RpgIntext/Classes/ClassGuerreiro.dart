import '../ClassPersonagem.dart';

class Guerreiro extends Personagem {
  var hp, armadura, stamina, arma, habilidades, exp, strength;
  Guerreiro(
      {this.hp = 115,
      this.armadura = 30,
      this.arma = 'Long Sword',
      this.exp = 0,
      this.habilidades = 0,
      this.stamina = 10,
      this.strength = 1});
  @override
  void profileclasse() {
    print('Hp: ${hp}');
    print('Armor: ${armadura}');
    print('Stamina: ${stamina}');
    print('Weapon: ${arma}');
    print('Exp: ${exp}');
    print('Strength: ${strength}');
  }

  void main() {}
}
