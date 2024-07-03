class Auto with Clacson {
  final String marca;
  final String modello;
  final int cavalli;

  Auto(this.marca, this.modello, this.cavalli);

  @override
  String get suono => "PIPI";
}

class Barca with Clacson {
  final String tipo;
  final double lunghezza;
  final double altezza;

  Barca(this.tipo, this.lunghezza, this.altezza);

  @override
  String get suono => "PEPE";
}

mixin Clacson {
  void suonaClacson() => print(suono);

  String get suono;
}