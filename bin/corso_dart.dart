void main(List<String> arguments) {
  // Per assegnare un valore a una variabile in base a una condizione
  // da rispettare, sappiamo che possiamo utilizzare un `if` statement
  String variabile;
  final x = 8;

  if (x > 6) {
    variabile = "Hello";
  } else {
    variabile = "Ciao";
  }

  print(variabile);

  // Tuttavia esiste un modo più veloce ed efficace di ottenere lo stesso
  // risultato, ovvero con l'operatore ternario.
  //
  // Prima va la condizione da verificare, dopo il '?' va il valore da assegnare
  // se la condizione è vera, dopo il ':' quello da assegnare se è falsa.
  variabile = x > 6 ? "Hello" : "Ciao";

  // Tuttavia, se si aggiungono più casi, è preferibile utilizzare un `if` con `else if`,
  // oppure uno `switch` statement speciale.
  variabile = switch (x) {
    > 6 => "Hello",
    == 6 => "Hola",
    _ => "Ciao", //? L'underscore indica il caso `default`
  };
}
