import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) async {
  // Prova a prevedere l'andamento del programma.
  await funzione1();
  funzione2();

  final x = funzione3();

  // Usiamo il metodo listen() proprio per "ascoltare" nuovi
  // valori emessi e farci qualcosa.
  x.listen(print);
}
