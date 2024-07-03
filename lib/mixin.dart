//* Se vogliamo aggiungere funzionalità a delle classi
//* senza stabilire un rapporto di parentela, possiamo utilizzare
//* un mixin

// Mixin che permette a una classe di suonare il clacson.
mixin Clacson {
  String get suono; //. In un mixin possiamo avere metodi astratti.

  void suonaClacson() => print(suono);
}

// Andiamo a utilizzare [Clacson] tramite la keyword 
// `with`. Visto che suono è astratto, dobbiamo sovrascriverlo.
class Auto with Clacson {
  Auto(this.marca, this.modello, this.cavalli);

  final String marca;
  final String modello;
  final int cavalli;

  @override
  String get suono => "PIPI";
}

class Barca with Clacson {
  Barca(this.tipo, this.lunghezza, this.altezza);

  final String tipo;
  final double lunghezza;
  final double altezza;
  
  @override
  String get suono => "PEPE";
}
