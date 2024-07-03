/*

  - ereditarietà: `extends`
  - implementazione: `implements`
  - mixin

*/

import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) {
  final fiatPanda = Auto("Fiat", "Panda", 67);
  final barca1 = Barca("barca a vela", 7, 3.5);

  fiatPanda.suonaClacson();
  barca1.suonaClacson();
}
