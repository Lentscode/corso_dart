void main(List<String> arguments) {
  // Le [Map] sono collezioni di elementi, detti valori, a cui viene assegnato
  // un identificativo, detto chiave. Chiave e valore possono essere di qualsiasi
  // tipo.
  //* Ovviamente due valori non dovrebbero avere la stessa chiave.
  Map<String, int> eta = {
    //. Abbiamo chiavi di tipo [String] e valori [int]
    "Antonio": 19,
    "Sara": 25,
    "Rosario": 67,
  };

  // Per recuperare un valore ci basta usare la sua chiave.
  final etaSara = eta["Sara"]; //! Se non dovesse trovare l'elemento, ci ritornerebbe `null`.

  // Per recuperare chiavi e valori separatamente...
  final keys = eta.keys;
  final values = eta.values;

  // Per recuperarli insieme...
  final entries = eta.entries;
  // che ci da un [Iterable] di tutti gli elementi della mappa.

  // Per modificare un valore, si fa sempre tramite la sua chiave.
  //* Se non è presente un valore con la chiave specificata, viene creato
  //* un nuovo elemento con questa chiave e con questo valore
  eta["Rosario"] = 73;
  eta["Alberto"] = 37; //. Viene aggiunto alla mappa {"Alberto": 37}
}
