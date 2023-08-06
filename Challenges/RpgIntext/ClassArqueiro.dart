class Arqueiro {
  var Hp;
  var Armadura;
  var Arma;
  var Exp;
  var Habilidades;
  var Destreza;
  var Stamina;
  Arqueiro(
      {this.Hp = 0,
      this.Armadura = 0,
      this.Arma = null,
      this.Destreza = 0,
      this.Exp = 0,
      this.Habilidades = 0,
      this.Stamina = 0});
}

void main() {
  Arqueiro p1 = new Arqueiro();
  p1.Hp = 100;
  p1.Arma = 'Arco';
  p1.Armadura = 100;
  p1.Destreza = 50;
  p1.Stamina = 50;
  p1.Habilidades = ['chuva de flechas'];
}
