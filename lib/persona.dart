// Nei file secondari di un file con i `part`, si utilizza la sintassi
// `part of`, indicando il file principale.
part of "persone.dart";

abstract base class Persona {
  final String nome;
  final int eta;

  const Persona({required this.nome, required this.eta});
}

final class Ingegnere extends Persona {
  const Ingegnere({
    required super.nome,
    required super.eta,
    required this.campo,
  });

  final String campo;
}

final class Imprenditore extends Persona {
  Imprenditore({
    required super.nome,
    required super.eta,
    required this.azienda,
  });

  final String azienda;
}

final class Dottore extends Persona {
  Dottore({
    required super.nome,
    required super.eta,
    required this.specializzazione,
  });

  final String specializzazione;
}
