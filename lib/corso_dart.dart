// Una funzione è un blocco di codice riutilizzabile, che scriviamo una volta,
// ma che possiamo riutilizzare in più parti di codice.

// Questa funzione, già presente nel file all'avvio del progetto, è di tipo `int`,
// perché ritorna un int, ovvero la sua invocazione nel codice da come risultato un int.
// Qui viene ritornato 6 * 7, ovvero 42
int calculate() {
  return 6 * 7;
}

// Una funzione può anche accettare i cosiddetti parametri, ovvero valori di input
// con cui lavorare per produrre l'output, ovvero il valore da ritornare
// Creiamo una funzione che esegue la somma per la differenza tra due numeri
//* - parametri: valori che passiamo quando invochiamo la funzione
//* - argomenti: valori che richiediamo quando definiamo la funzione

int sommaPerDifferenza(int a, int b) {
  //* questi sono argomenti
  return (a + b) * (a - b);
}

// Il tipo della funzione può essere uno qualsiasi, anche void, il che vuol dire che
// non viene ritornato nessun valore

void printaSommaPerDifferenza(int a, int b) {
  //. Possiamo usare funzioni all'interno di altre funzioni, rendendo il codice più leggibile
  final risultato = sommaPerDifferenza(a, b);
  print(risultato);
}

// a e b sono degli argomenti posizionali obbligatori perché:
// 1) posizionali: all'invocazione, i parametri devono essere passati nell'ordine corretto
// 2) obbligatori: sono richiesti per far eseguire il codice

// Tuttavia, possiamo anche rendere un argomento opzionale, mettendolo tra parentesi quadre
// e rendendolo nullable oppure assegnando un valore di default.

// Qui rendiamo cognome opzionale rendendolo nullable
void saluta(String nome, [String? cognome]) {
  String saluto = "Ciao $nome";

  if (cognome != null) {
    saluto = "$saluto $cognome";
  }

  print(saluto);
}

// Oppure possiamo dargli un valore di default
void salutaDefault(String nome, [String cognome = "Lentini"]) {
  //? Un valore di default dev'essere costante
  saluta(nome, cognome);
}

// Se vogliamo rendere il passaggio di parametri indipendente dalla posizione di essi,
// possiamo definire argomenti nominali obbligatori e opzionali

void salutaNominali({required String nome, String? cognome}) {  //! gli argomenti obbligatori vanno preceduti da `required`
  saluta(nome, cognome);
}
