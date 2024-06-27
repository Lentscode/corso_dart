void main(List<String> arguments) {
  // Utilizziamo un ciclo `for` quando vogliamo ripetere un processo
  // più volte, ad esempio il seguente ciclo stampa nel terminale,
  // la stringa Hello World per 10 volte.

  for (int i = 0; i < 10; i++) {
    print("Hello World");
  }

  // Quello che fa è inizializzare una variabile i che usa come contatore,
  // e controlla se è minore di 10. Se lo è, allora esegue il codice all'interno delle
  // parentesi graffe. Poi, appena prima di passare all'iterazione successiva,
  // viene eseguito ```i++```, che fa aumentare i di 1.

  // In generale, il valore di inizializzazione del contatore, il suo nome, la condizione
  // di ripetizione e la variazione del contatore sono completamente variabili.

  for (int count = 24; count > 9; count -= 4) {
    print("Hello World $count"); //. Possiamo anche accedere al valore di count
  }

  // -----------------------------------------------------------------------------------

  // Il ciclo `while` viene usato quando si vuole eseguire un processo nel mentre una certa
  // condizione è soddisfatta, piuttosto che un numero definito di volte come nel caso del
  // `for`. Ad esempio

  int counter = 8;

  while (counter > 0) {
    print("Hello World");
    counter -= 2;
  }

  // Se si vuole eseguire il codice all'interno del while almeno una volta, indipendentemente
  // dal fatto che la condizione sia soddisfatta o meno, si può usare il costrutto
  // `do-while`.

  // In particolare, questo `do-while` fa la stessa cosa del `while` di sopra,
  // ma anche se counter è subito minore di 0, il codice all'interno di `do` viene eseguito
  // almeno una volta
  do {
    print("Hello World");
    counter -= 2;
  } while (counter > 0);

  // -----------------------------------------------------------------------------------

  // Le keyword `break` e `continue` vengono usate nei cicli for e while, e hanno lo scopo di
  // modificare il normale processo di iterazione.
  // Ad esempio, questo ciclo for si ripete solo 3 volte, perché appena si ha i == 3, la keyword
  // `break` agisce, uscendo dal ciclo for

  for (int i = 0; i < 10; i++) {
    if (i == 3) {
      break;
    }
    print("$i");
  }

  // Invece, se al posto del break mettiamo continue, appena si ha i == 3, il ciclo intero non viene
  // interrotto, ma l'iterazione con i == 3 viene saltata, evitando che venga stampato 3 e ricominciando
  // dal 4.
}
