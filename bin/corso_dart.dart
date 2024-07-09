void main(List<String> arguments) {
  // I tipi generici in Dart permettono di scrivere classi e funzioni che possono operare
  // su vari tipi di dati senza specificare il tipo esatto in anticipo.
  // Questo aumenta la flessibilità e la riusabilità del codice.

  // Un esempio è la classe [List]. Infatti è definita come [List<E>], permettendoci
  // di creare liste di ogni tipo.
  final list = <double>[9.5, 6.3, 8.7, 4.6]; //. Il tipo degli elementi possiamo specificarlo anche in questo modo.

  // Il metodo map() delle liste è un esempio di funzione che si avvale dei tipi generici.
  // Questo ci permette di ricavare una lista di qualsiasi tipo da quella iniziale.
  final stringList = list.map<String>((n) => n.toStringAsExponential()); //! Imponiamo il tipo dell'[Iterable] ritornato a [String].
}
