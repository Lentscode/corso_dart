// La keyword `typedef` ci permette di realizzare dei type aliases,
// ovvero dei tipi da usare al posto di altri tipi.
typedef Stringa = String;
// È molto utile in caso abbiamo tipi molto lunghi da inserire come parametri
// in funzioni o come proprietà in classi.
typedef Operazione = int Function(int a, int b);

void eseguiOperazione(int a, int b, Operazione operazione) {
  final risultato = operazione(a, b);

  print(risultato);
}
