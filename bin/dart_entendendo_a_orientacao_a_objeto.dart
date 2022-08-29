void main() {
  Fruta fruta01 = Fruta("Banana", 100, 'Amarela', 'Doce', 15);
  Fruta fruta02 = Fruta("Laranja", 75, 'Laranja', 'Azeda', 30);
  Fruta fruta03 = Fruta.nomeados(
      nome: 'Limão',
      peso: 50,
      corDaFruta: 'Verde',
      sabor: 'Azeda',
      diasDesdeAColheita: 60);
  Fruta fruta04 = Fruta.minusculas("Ameixa", 50, 'Vinho', 'Doce', 15);

  print(fruta01.nome);
  print(fruta02.nome);
  print(fruta03.nome);
  print(fruta04.nome);

  print(fruta01.estaMadura(10));
  print(fruta02.estaMadura(20));
  print(fruta03.estaMadura(30));
  print(fruta04.estaMadura(40));
}

class Fruta {
  String nome;
  double peso;
  String corDaFruta;
  String sabor;
  int diasDesdeAColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.corDaFruta, this.sabor,
      this.diasDesdeAColheita,
      {this.isMadura});

  Fruta.nomeados(
      {required this.nome,
      required this.peso,
      required this.corDaFruta,
      required this.sabor,
      required this.diasDesdeAColheita,
      this.isMadura});

  Fruta.minusculas(this.nome, this.peso, this.corDaFruta, this.sabor,
      this.diasDesdeAColheita,
      {this.isMadura}) {
    nome = nome.toLowerCase();
    corDaFruta = corDaFruta.toLowerCase();
    sabor = sabor.toLowerCase();
  }

  String estaMadura(int diasAteAmadurecer) {
    return 'Sua $nome está madura? ${diasDesdeAColheita >= diasAteAmadurecer}';
  }
}
