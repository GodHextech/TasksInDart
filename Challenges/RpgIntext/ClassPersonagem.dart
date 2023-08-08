class Personagem {
  var vida, nome, classe, nivel, inventory, exp, hp, damage, hporiginal;
  Personagem({this.nivel = 0,this.vida = 1});
  //Personagem(this.Nome,this.Classe);
  void atack() {}
  void openinventory() {}
  void escape() {}
  void useHability() {}
  void curar() {}
  void profileclasse() {}
  void profile() {
    print('Nome: ${nome}');
    print('Classe: ${classe}');
    print('Vida: ${vida}');
    print('Nível: ${nivel}');
  }

  void subirnivel() {}
}
