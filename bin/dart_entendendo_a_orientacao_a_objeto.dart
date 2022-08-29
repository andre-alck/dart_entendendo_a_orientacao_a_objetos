void main() {
  String nome = 'laranja';
  double peso = 100.2;
  String corDaFruta = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeAColheita = 20;
  bool isMadura;

  isMadura = funcEstaMadura(diasDesdeAColheita);
  print(isMadura);

  mostrarMadura(30, nome: nome);
  mostrarMadura(30, nome: nome, corDaFruta: corDaFruta);
  mostrarMadura(30, nome: nome, corDaFruta: corDaFruta, sabor: "Ok.");

  int diasAteAmadurecer = funcDiasAteAmadurecer(diasDesdeAColheita);
  print(diasAteAmadurecer);
}

bool funcEstaMadura(int diasDesdeAColheita) {
  return diasDesdeAColheita >= 30;
}

void mostrarMadura(int diasDesdeAColheita, {String? corDaFruta, String sabor = "Ok", required String nome}) {
  if (diasDesdeAColheita >= 30) {
    if (corDaFruta != null) {
      print('A $nome está madura. Sua cor é $corDaFruta. Seu sabor é $sabor.');
    } else {
      print('A $nome está madura. Seu sabor é $sabor.');
    }
  } else {
    print('A $nome não está madura. Seu sabor é $sabor.');
  }
}

funcDiasAteAmadurecer(int diasDesdeAColheita) {
  int totalDeDiasParaAmadurecer = 30;
  int quantosDiasFaltam = totalDeDiasParaAmadurecer - diasDesdeAColheita;
  return quantosDiasFaltam;
}