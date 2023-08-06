class Mago {
  var Hp;
  var Armadura;
  var Mana;
  var Arma;
  var Poder;
  var Exp;
  var Habilidade;
  Mago(
      {this.Hp = 0,
      this.Armadura = 0,
      this.Mana = 0,
      this.Arma = null,
      this.Poder = 0,
      this.Exp = 0,
      this.Habilidade = 0});
}

void main() {
  Mago p1 = new Mago();
  p1.Hp = 100;
  p1.Armadura = 100;
  p1.Mana = 50;
  p1.Arma = 'Cajado';
  p1.Poder = 0;
  p1.Exp = 0;
  p1.Habilidade = ['Bola de fogo'];
}

/*
 Arqueiro(
      {this.Hp = 0,
      this.Armadura = 0,
      this.Arma = null,
      this.Destreza = 0,
      this.Exp = 0,
      this.Habilidade = 0,
      this.Stamina = 0});
}

void main() {
  Arqueiro p1 = new Arqueiro();
  p1.Hp = 100;
  p1.Arma = 'Arco';
  p1.Armadura = 100;
  p1.Destreza = 50;
  p1.Stamina = 50;
  p1.Habilidade = ['chuva de flechas'];
}
*/