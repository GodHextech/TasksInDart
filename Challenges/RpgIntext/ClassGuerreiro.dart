class Guerreiro {
  var Hp;
  var Armadura;
  var Stamina;
  var Arma;
  var Habilidades;
  var Exp;
  var Strenght;
  Guerreiro(
      {this.Hp = 0,
      this.Armadura = 0,
      this.Arma = null,
      this.Exp = 0,
      this.Habilidades = 0,
      this.Stamina = 0,
      this.Strenght = 0});
}

void main() {
  Guerreiro p1 = new Guerreiro();
  p1.Hp = 100;
  p1.Arma = 'Espada';
  p1.Armadura = 100;
  p1.Stamina = 50;
  p1.Strenght = 100;
}
