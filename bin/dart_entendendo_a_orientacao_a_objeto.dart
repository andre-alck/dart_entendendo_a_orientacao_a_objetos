void main() {
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
  limao.proteger();
  macadamia.quebrar();

  // arroz.fazerMassa();
  banana.fazerMassa();
  chuchu.fazerMassa();
  limao.fazerMassa();
  macadamia.fazerMassa();
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

class Fruta extends Alimento implements Bolo {
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

  @override
  void separarIngredientes() {
    print('Pegando a fruta $nome e ingredientes.');
  }

  @override
  void fazerMassa() {
    print('Misturando o(a) $nome com ingredientes.');
  }

  @override
  void assar() {
    print('Colocando a massa no forno.');
  }
}

class Legume extends Alimento implements Bolo {
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

  @override
  void separarIngredientes() {
    print('Pegando o legume $nome e ingredientes.');
  }

  @override
  void fazerMassa() {
    print('Misturando o(a) $nome com ingredientes.');
  }

  @override
  void assar() {
    print('Colocando a massa no forno.');
  }
}

class Citricas extends Fruta {
  double nivelDeAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeAColheita, this.nivelDeAzedo)
      : super(nome, peso, cor, sabor, diasDesdeAColheita);

  void proteger() {
    print('Colocando óculos de proteção.');
  }
  @override
  void fazerMassa() {
    proteger();
    super.fazerMassa();
  }

}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeAColheita, this.porcentagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeAColheita);

  void quebrar() {
    print('Quebrando a noz.');
  }

  @override
  void fazerMassa() {
    quebrar();
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
