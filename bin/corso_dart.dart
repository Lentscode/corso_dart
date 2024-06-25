void main(List<String> arguments) {
  // Uno `switch` statement ha lo stesso scopo di un `if` statement, ma viene utilizzato
  // per lo più quando si presentano più casi diversi.

  // Prendiamo come esempio una variabile che contiene un voto in trentesimi, quindi da 0 a 30
  // e in base a questo vogliamo settare in un'altra variabile il corrispondente voto da A ad F.

  final int votoInTrentesimi = 26;
  String votoInLettera; // la variabile da settare

  // Uno `switch` è composto dalla variabile che vogliamo controllare e dai casi possibili, ognuno
  // dei quali contrassegnato dalla keyword `case`.
  // Dopo i due punti inseriamo quello che vogliamo eseguire in quel caso.
  // (Come nell'if, il programma scorre i casi dall'alto verso il basso).
  switch (votoInTrentesimi) {
    case >= 28 && <= 30: //. la variabile [votoInTrentesimi] è implicita, non serve inserirla nei casi
      votoInLettera = 'A';
    case >= 25 && <= 27:
      votoInLettera = 'B';
    case >= 21 && <= 24:
      votoInLettera = 'C';
    case >= 18 && <= 20:
      votoInLettera = 'D';
    case >= 15 && <= 17:
      votoInLettera = 'E';
  }

  print(votoInLettera); //! notiamo un errore

  // L'errore ci è dato perché non soddisfiamo tutti i casi.
  // Infatti, assegniamo il [votoInLettera] soltanto per i voti da 15 a 30,
  // quando un voto può essere meno di 15, e comunque, in caso di errore, potrebbe
  // essere inserito un qualsiasi numero, anche negativo.

  // Quello che dobbiamo aggiungere è un caso di default, una sorta di
  // "else".

  switch (votoInTrentesimi) {
    case >= 28 && <= 30:
      votoInLettera = 'A';
    case >= 25 && <= 27:
      votoInLettera = 'B';
    case >= 21 && <= 24:
      votoInLettera = 'C';
    case >= 18 && <= 20:
      votoInLettera = 'D';
    case >= 15 && <= 17:
      votoInLettera = 'E';
    default:
      votoInLettera = 'F';
  }

  print(votoInLettera); //. l'errore è scomparso

  // Introduciamo una nuova keyword: `break`. Serve a uscire da parti di codice secondo certe condizioni,
  // che possiamo specificare noi. Nello switch statement, viene aggiunta implicitamente alla fine di ogni caso;
  // tuttavia potrebbe servirci nel caso in cui, per un determinato `case`, non volessimo
  // eseguire del codice.

  switch (votoInTrentesimi) {
    case >= 28 && <= 30:
      //. Break aggiunto qui, se non ci fosse e la linea fosse vuota,
      //. questo `case` si ancorerebbe a quello successivo,
      //. settando il votoInLettera a 'B'.
      break;
    case >= 25 && <= 27:
      votoInLettera = 'B';
    case >= 21 && <= 24:
      votoInLettera = 'C';
    case >= 18 && <= 20:
      votoInLettera = 'D';
    case >= 15 && <= 17:
      votoInLettera = 'E';
    default:
      votoInLettera = 'F';
  }

  // ---------------------------------------------------------------------------------------

  // Vediamo come eseguire operazioni aritmetiche.
  // Banalmente abbiamo gli operatori che tutti conosciamo:
  // +, -, *, /

  int somma = 6 + 4;
  int sottrazione = 6 - 4;
  int prodotto = 6 * 4;
  double divisione = 6 / 4; //? Da notare che la divisione ritorna un double

  // Tuttavia c'è un'altra operazione, denominata "modulo".
  // Il suo risultato è il resto della divisione tra primo e secondo termine

  int modulo = 6 % 4; // Il resto di 6 / 4 è 2.

  // Consideriamo di avere una variabile n. Per eseguire delle operazioni su di essa,
  // possiamo usare delle shortcuts.

  double n = 8; //? Impostata come double per permettere la divisione

  n += 9; // È la forma abbreviata di n = n + 9
  n -= 3;
  n *= 2;
  n /= 7;
  n %= 6;
  n++; //? Questo aggiunge 1
  n--; //? Questo sottrae 1

  // Ovviamente possiamo costruire espressioni aritmetiche più complesse,
  // tenendo sempre le regole di priorità delle operazioni, ovvero le parentesi prima di tutto,
  // poi moltiplicazioni e divisioni, infine addizioni e sottrazioni

  n = 7 + 4 * (5 - 2); //. n = 19
}
