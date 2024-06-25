void main(List<String> arguments) {
  // Gli `if` statement servono a controllare il flusso di un programma,
  // seguendo determinate condizioni.
  // Ad esempio, possiamo scegliere di stampare un numero solo se questo
  // è maggiore di 5

  final int numero = 5;

  if (numero > 3) {
    print("Numero maggiore di 3"); // viene stampato, siccome numero è maggiore di 5
  }

  // Se la condizione non è soddisfatta, possiamo far eseguire un codice alternativo
  // grazie a `else`

  if (numero > 3) {
    print("Numero maggiore di 3");
  } else {
    print("Numero minore o uguale a 3");
  }

  // Se volessimo anche distinguere il caso in cui il numero è proprio
  // uguale a 3, possiamo farlo aggiungendo un `else if`

  if (numero > 3) {
    print("Numero maggiore di 3");
  } else if (numero == 3) {
    print("Numero uguale a 3");
  } else {
    print("Numero minore a 3");
  }

  // ----------------------------------------------------------------------------

  // Le espressioni usate all'interno delle espressioni `if` ed `else if`,
  // sono tutte boolean, vuol dire che al momento di eseguire il codice
  // diventano [true] o [false].

  // Se abbiamo bisogno di espressioni logiche più complesse, possiamo realizzarle attraverso gli
  // OPERATORI LOGICI, di cui fanno parte anche gli operatori di confronto, come >, >=, ecc.

  // Ad esempio, se vogliamo controllare che numero sia compreso tra 2 e 4...
  if (numero >= 2 && numero <= 4) {
    print("Numero più grande di 2 E più piccolo di 4");
  }

  // Oppure se è esterno all'intervallo tra 2 e 4...
  if (numero <= 2 || numero >= 4) {
    print("Numero più piccolo di 2 O più grande di 4");
  }

  // Oppure ancora se non è 3...
  if (numero != 3) {
    print("Numero non è 3");
  }

  // Ovviamente possiamo combinare più operatori diversi per realizzare espressioni
  // più complesse, ricordando che l'ordine di priorità è [!] > [&&] > [||], ovvero
  // la negazione ha prevalenza su tutto.
  if (numero != 4 && (numero < 5 || numero >= 9)) {
    print("Numero è minore di 5 oppure maggiore o uguale a 9, ma non uguale a 4");
  }

  // In tutto questo, espressioni di questo tipo possono essere assegnati a variabili,
  // che ovviamente assumono tipo [bool]
  final bool booleano = numero != 4 && (numero < 5 || numero >= 9);

  // e questi possono essere usati in `if` statement
  if (!booleano) {
    //! da notare il punto esclamativo di negazione: se [booleano] risulta true, diventa false
    print("Prova");
  }

  // ----------------------------------------------------------------------------

  // Gli if sono molto utili quando si lavora con variabili nullable, ad esempio...
  int? n;

  if (n != null) {
    //. se n è nullo, si salta questa parte
    //* processo in cui n viene usato ma ha bisogno di essere non nullo
  }

  // Ci sono inoltre altri operatori che si usano quando si lavora con valori nullable
  // come il [??]. Serve a dare un valore di default in caso il valore a sinistra di [??] sia nullo.

  final int m = n ?? 10; //? se n risulta nullo, allora m assume il valore 10

  // Se invece sappiamo PER CERTO che n sia non nullo, possiamo usare l'operatore [!].
  // Questo riferisce al compilatore che n, arrivati a quel punto è sicuramente non nullo.

  final int o = n!; //! se n risulta nullo, si avrà un errore
}
