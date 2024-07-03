//* La keyword `extends` si usa quando si vuole stabilire un rapporto
//* di parentela tra due classi, rendendo una la classe madre e l'altra
//* la figlia. Questo concetto viene detto ereditarietà.
class Persona {
  const Persona({required this.nome, required this.eta});

  final String nome;
  final int eta;

  void respira() => print("$nome sta respirando");
}

// Grazie alla keyword `extends`, [Studente] ha accesso a tutte le proprietà
// e i metodi di [Persona].
//! Una classe può estendere soltanto UNA altra classe.
class Studente extends Persona {
  //. Nel costruttore, inizializziamo le proprietà della classe madre utilizzando
  //. la keyword `super`, che indica che ci stiamo riferendo alla classe madre.
  const Studente({required super.nome, required super.eta, required this.corso});
  // Per inizializzare una proprietà della classe madre nella lista di inizializzazione...
  const Studente.ventenne({required super.nome, required this.corso}) : super(eta: 20); //. si usa questa sintassi

  final String corso;

  //* Se si vuole modificare un metodo della classe madre, si può fare riscrivendo
  //* il metodo, ma utilizzando l'annotazione `@ovveride`
  @override
  void respira() => print("$nome sta respirando e intanto studia $corso");
}

//. Più classi possono estendere la stessa
class Imprenditore extends Persona {
  Imprenditore({required super.nome, required super.eta, required this.azienda});
  final String azienda;

  @override
  void respira() => print("$nome sta respirando e intanto possiede $azienda");
}
