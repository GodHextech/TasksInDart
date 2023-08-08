import '../ClassPersonagem.dart';

class Guerreiro extends Personagem {
  var hp, armadura, stamina, arma, habilidades, exp, strength;
  Guerreiro(
      {this.hp = 110,
      this.armadura = 20,
      this.arma = null,
      this.exp = 0,
      this.habilidades = 0,
      this.stamina = 1,
      this.strength = 1});

  void main() {}
}
