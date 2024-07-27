// Funzione 'swap' che accetta un record e ne restituisce uno nuovo con i campi scambiati.
(int b, {int a}) swap((int a, {int b}) rec) {
  // La funzione accetta un record con un campo posizionale 'a' e un campo nominato 'b'.
  // Restituisce un nuovo record con i valori scambiati: 'b' diventa posizionale e 'a' nominato.

  // rec.b accede al campo nominato 'b' del record di input.
  // rec.$1 accede al primo campo posizionale del record di input (che è 'a').
  // Il nuovo record ha 'b' come primo campo posizionale e 'a' come campo nominato.
  return (rec.b, a: rec.$1);
}

// Funzione che divide un nome completo in nome e cognome.
// La funzione accetta una stringa contenente un nome completo.
// Restituisce un record con due campi: nome e cognome.
(String nome, String cognome) recuperaNomeECognome(String nomeCompleto) {
  // Divide la stringa in una lista di parole usando lo spazio come separatore.
  final listaNome = nomeCompleto.split(" ");

  // Restituisce un record con il primo elemento della lista (nome) come primo campo
  // e il secondo elemento (cognome) come secondo campo.
  // Nota: questa implementazione assume che il nome completo abbia sempre esattamente due parti.
  return (listaNome[0], listaNome[1]);
}
