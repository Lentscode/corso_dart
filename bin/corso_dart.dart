void main(List<String> arguments) {
  // Vediamo più in dettaglio le stringhe. Esse non sono altro che un'insieme di caratteri
  // ordinati uno dopo l'altro, ad esempio la stringa

  String a = "Hello World";

  // non è altro che la successione dei caratteri H, e, l, l, eccetera
  // (compreso lo spazio).

  // Una stringa la possiamo racchiudere sia con virgolette singole che doppie

  a = 'Hello World'; //. stesso risultato di prima

  // Se vogliamo aggiungere un carattere speciale come un apostrofo,
  // e abbiamo le virgolette singole, possiamo:
  // - sostituire le virgolette singole con le doppie
  a = "Com'è il tempo?"; //. preferibile
  // - aggiungere un backslash (\) prima dell'apostrofo
  a = 'Com\'è il tempo?';

  // Ritornando al discorso di prima, essendo una stringa una lista di caratteri,
  // possiamo ottenere ognuno di questi conoscendo la loro posizione, ovvero
  // il loro INDICE. (Capiremo meglio quando parleremo di stringhe)

  print(a[1]); //? Stampa 'o', perché si comincia dallo 0, quindi la 'o', seconda, ha indice 1.

  // ------------------------------------------------------------------------------

  // Possiamo unire due o più stringhe in due modi:
  // - "sommandole"

  String citta = "Palermo";
  //. Notare due cose: ho aggiunto due spazi alla "a", ci consiglia di usare l'interpolazione (secondo metodo).
  String stringaCompleta = a + " a " + citta;

  // - interpolazione, che consiste nel formare direttamente la stringa, inserendo le altre stringhe
  // (o altri tipi di valore) tramite il simbolo di dollaro.

  stringaCompleta = "$a a $citta";

  print(stringaCompleta);

  // ------------------------------------------------------------------------------

  // Dart ci offre un sacco di funzioni (vedremo nei prossimi video in particolare) per lavorare
  // con le stringhe.

  // Un esempio è contains(), che ci permette di capire se una stringa contiene un certo carattere,
  // o un certo pattern (passato con RegEx).
  stringaCompleta.contains('C'); //. Ritorna true, siccome 'C' si trova nella stringa

  // Un altro esempio è split(), molto utile per separare più parole all'interno di una stringa,
  // dando come pattern lo spazio vuoto. Ritorna una lista delle singole parole all'interno della stringa,
  // separate secondo il pattern dato.
  stringaCompleta.split(' '); //. Ritorna ["Com'è", "il", "tempo", "a", "Palermo?"]
}
