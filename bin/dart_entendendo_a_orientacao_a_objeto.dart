main() {
  Alimento arroz = Alimento("Arroz", 1.0, "Branco");
  Fruta banana = Fruta('Banana', 50.0, 'Amarela', 'Doce', 7);
  Legume chuchu = Legume('Chuchu', 100.0, 'Verde', true);
  Citricas limao = Citricas('Limão', 15, 'Verde', 'Azedo', 30, 100);
  Nozes macadamia = Nozes('Macadâmia', 5, 'Marrom', 'Amargo', 50, 50);

  arroz.mostraAlimento();
  banana.mostraAlimento();
  chuchu.mostraAlimento();
  limao.mostraAlimento();
  macadamia.mostraAlimento();

  banana.fazerSuco();
  chuchu.cozinhar();
  limao.provar();
  macadamia.quebrar();
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void mostraAlimento() {
    print('Este(a) $nome pesa $peso gramas. Sua cor é $cor.');
  }
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeAColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeAColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  String estaMadura(int diasAteAmadurecer) {
    return 'Sua $nome está madura? ${diasDesdeAColheita >= diasAteAmadurecer}';
  }

  void fazerSuco() {
    print('Suco de $nome!');
  }
}

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Cozinhando... pronto!');
    } else {
      print('Este legume não precisa ser cozido.');
    }
  }
}

class Citricas extends Fruta {
  double nivelDeAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeAColheita, this.nivelDeAzedo)
      : super(nome, peso, cor, sabor, diasDesdeAColheita);

  void provar() {
    print('Azedo...');
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeAColheita, this.porcentagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeAColheita);

  void quebrar() {
    print('Muito resistente.');
  }
}
