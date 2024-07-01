void main(List<String> arguments) {
  // Una lista è un'insieme di elementi dello stesso tipo ordinati.
  // Gli elementi di una lista sono separati da una virgola e racchiusi da parentesi quadre
  List<String> saluti = ["Ciao", "Hello", "Hola"];

  // Se vogliamo accedere a un elemento della lista possiamo farlo attraverso il
  // suo indice, ovvero la sua posizione, racchiusa tra parentesi quadre.
  print(saluti[1]); //? Stampa "Hello", visto che si comincia a contare da 0.
  print(saluti[3]); //! Da errore, siccome non esiste l'elemento in posizione 3, la lista non è lunga abbastanza

  // Se si vuole modificare un elemento si fa sempre attraverso il suo indice.
  saluti[1] = "Hi";

  // Per aggiungere un elemento si usa il metodo add() o addAll() (in caso si
  // voglia aggiungere una lista di elementi).
  saluti.add("Hallo");

  //. Tutto ciò funziona anche se la lista è `final`
  //! tranne riassegnare completamente la lista.

  // -----------------------------------------------------------------------

  // Tra i metodi delle liste più importanti abbiamo map(), che
  // ritorna un'[Iterable] che contiene tutti gli elementi della lista vecchia
  // con elementi modificati secondo un pattern.
  final List<String> salutiMaiuscolo = saluti
      .map((saluto) => saluto.toUpperCase())
      .toList(); //? Se vogliamo avere una lista chiamiamo il metodo toList()

  // Un altro metodo è where() che ritorna un'[Iterable] con tutti gli elementi che rispettano una certa condizione
  final Iterable<String> salutiConH = saluti.where((saluto) => saluto.toLowerCase().contains('h'));

  // -----------------------------------------------------------------------

  // Se iterare tra gli elementi della lista, eseguendo del codice con ognuno di essi,
  // possiamo usare un for loop con una sintassi speciale
  for (String saluto in saluti) {
    print(saluto);
  }

  // -----------------------------------------------------------------------

  // I [Set] sono simili alle liste, in cui gli elementi sono racchiusi da parentesi graffe,
  Set<int> numeri = {9, 5, 3, 8};

  // ma sono degli insiemi di elementi
  // - non ordinati, quindi non si può ottenere un elemento in base al suo indice
  numeri[1]; //! Da errore
  // - in cui un elemento non può apparire più di una volta
  numeri.add(3);
  print(numeri); //. Il 3 spunterà una sola volta, non avrà un doppione.
}
