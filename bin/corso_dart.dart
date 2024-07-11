import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) {
  // L'operatore cascade viene utilizzato per eseguire operazioni in sequenza.
  List<double> list = [6.4, 5.2, 7.3, 8.9, 2.0, 6.7];

  list.removeWhere((n) => n < 4);
  list.sort();

  print(list);

  // Invece di eseguire due istruzioni separate con l'operatore punto,
  // possiamo concatenarle con l'operatore cascade.
  list
    ..removeWhere((n) => n < 4)
    ..sort();

  // Addirittura possiamo usare l'operatore cascade direttamente durante
  // l'assegnazione della variabile.
  list = [6.4, 5.2, 7.3, 8.9, 2.0, 6.7]
    ..removeWhere((n) => n < 4) //! Non potremmo farlo con l'operatore punto.
    ..sort();

  print(list);

  // -----------------------------------------------------------------------

  // Un altro utilizzo è quello di assegnare valori a proprietà di un oggetto.
  //? La classe Persona contiene proprietà `late`, che ci permettono di non definire
  //? un costruttore.
  final persona = Persona()
    ..nome = "Antonio"
    ..cognome = "Lentini";

  print("${persona.nome} ${persona.cognome}");
}
