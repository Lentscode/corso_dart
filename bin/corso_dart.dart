import 'package:corso_dart/auto.dart';

void main(List<String> arguments) {
  // Per creare un oggetto di tipo [Auto], si usa la seguente sintassi:
  final fiatPunto =
      Auto("Fiat", "Punto", 2001); //. Viene eseguito _accensione() visto che si trova nel body del costruttore

  // Per accedere a proprietà e metodi si usa l'operatore punto.
  print(fiatPunto.marca);
  fiatPunto.accelera();

  // Qui usiamo un costruttore nominale
  final audiA1 = Auto.audi(modello: "A1", anno: 2020);

  final porsche911 = Auto.dEpoca(anno: 1976, marca: "Porsche", modello: "911"); //! Avremo un errore perché 1976 non è abbastanza per essere d'epoca
}
