import 'package:corso_dart/persona.dart';

void main(List<String> arguments) {
  final sara = Persona("Sara", 26);

  // Possiamo modificare le proprietà di [sara] passando valori
  // consentiti.
  sara.nome = "Sarah";
  sara.eta = 27;

  print(sara);

  //! Proprietà non vengono modificate se si passano
  //! valori proibiti.
  sara.nome = "";
  sara.eta = -3;

  print(sara);

  // Variabili e metodi statici accessibili in questo modo.
  print(Persona.specie);
  Persona.presentaSpecie();
}
