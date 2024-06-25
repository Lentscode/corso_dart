void main(List<String> arguments) {
  // Grazie alla keyword `var` possiamo creare una variabile `x`.
  // Il tipo di `x` viene dato da 'Hello World', che è una [String], quindi
  // anche x sarà una [String], grazie al TYPE INFERENCE.
  var x = 'Hello World';

  // Possiamo modificare x con un'altra [String].
  x = 'How are you?';

  //! Ma non possiamo farlo con un tipo diverso, ad esempio un [int].
  x = 124;

  // Al posto di `var` possiamo specificare direttamente il tipo della variabile,
  // e la variabile ha le stesse caratteristiche di quella creata con `var`.
  String y = 'Hello World';

  // I tipi built-in in dart più importanti sono:
  // - [String], che abbiamo già visto;
  // - [int], un numero intero, positivo o negativo;
  // - [double], un numero con la virgola, positivo o negativo;
  // - [bool], un valore binario, vero o falso, true o false.
  int numero = 89;

  double pi = 3.14;

  bool booleano = true;

  // Una variabile contrassegnata con `final` ha un valore finale, ovvero
  // non può essere riassegnata con un altro valore.
  final String z = 'Hi world';

  z = 'Hi Italy'; //! da errore

  // Una variabile contrassegnata con `const` ha le stesse caratteristiche
  // di una variabile `final`, ma non può avere valori di variabili `final` e deve contenere
  // soltanto valori costanti e noti a tempo di scrittura.
  const int numeroCostante = 78;

  const String stringaNonCostante = z; //! assegnare una variabile finale a una costante da errore

  // Una variabile `late` ha la possibilità di essere assegnata appena prima di essere usata,
  // consentendoci di ovviare agli errori statici dati dal compilatore
  late String inRitardo;

  // Proprio per questa sua caratteristica, possiamo inizializzare una variabile finale
  // senza darle un valore.
  late final String inRitardoFinale; //? una volta assegnatagli un valore non può essere modificata
  //! Sempre attenzione ad usare le variabili `late`, se usate senza valore
  //! portano a errori e crush.

  //* Secondo il principio di NULL SAFETY, una variabile può assumere il valore di [null]
  //* solamente se specificato tramite il ?.
  String? nullableString; // In questo modo viene inizializzata subito a null

  nullableString = 'Hello';
  nullableString = null; // Possiamo assegnarle direttamente il valore null
}
