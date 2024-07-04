//* Un [Future] in Dart rappresenta un valore o un errore che sarà disponibile in futuro.
//* È una sorta di "promessa" che un valore sarà disponibile in un secondo momento,
//* permettendo di scrivere codice asincrono in modo più leggibile e gestibile.
//
// Possiamo creare delle funzioni che ritornano un [Future], usando questa sintassi
// e usando la keyword `async`.
Future<void> funzione1() async {
  // In questo caso, il print "Immediato" avviene all'istante, mentre
  // "In ritardo" avviene dopo due secondi.
  // Infatti, un Future di per sé non blocca il flusso del codice. Appena
  // viene completato viene semplicemente eseguito, come in questo caso
  Future.delayed(Duration(seconds: 3), () => print("In ritardo 1"));
  print("Immediato 1");
}

Future<void> funzione2() async {
  // Se vogliamo aspettare il completamento del [Future] prima di eseguire il
  // resto del codice, usiamo la keyword `await`, proprio per aspettare
  // il completamento del Future.
  await Future.delayed(Duration(seconds: 2), () => print("In ritardo 2"));
  print("Immediato 2");
}

// Uno [Stream] in Dart rappresenta una sequenza di valori che vengono ricevuti "asincronamente" nel tempo. 
// Mentre un [Future] fornisce un singolo valore o errore, uno [Stream] può fornire molti valori 
// o errori nel tempo, permettendo di lavorare con eventi che si verificano in modo continuo o intermittente.
//
// In questo esempio, viene creato uno [Stream] che ogni secondo emette una [String].
//? Da notare la `async*` keyword.
Stream<String> funzione3() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield "Hello $i"; //? La keyword `yield` ci serve per emettere un valore.
  }
}
