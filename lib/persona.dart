//* Getters e setters sono metodi speciali che ci permettono, rispettivamente,
//* di recuperare o settare una proprietà di una classe.
//
// Ogni proprietà ha il suo getter e setter di default, che semplicemente permette
// di recuperare o modificare (se non `final`) la proprietà stessa nel modo in cui
// già conosciamo.
//
// Tuttavia, creare dei getters e setters personalizzati possono essere utili nella
// gestione di proprietà private (accessibili solo nel file della classe) oppure con limiti
// riguardo la modifica della proprietà stessa.
class Persona {
  //. Proprietà rese private per impedire di usare i getters e i setters di default.
  String _nome;
  int _eta;

  //! Per proprietà private, si possono utilizzare solo parametri posizionali
  Persona(this._nome, this._eta);

  //. Se vogliamo usare parametri nominali, possiamo fare così
  Persona.requiredParams({required String nome, required int eta})
      : _nome = nome,
        _eta = eta;

  // Getters delle proprietà.
  String get nome => _nome;
  int get eta => _eta;

  // Setters personalizzati per impedire l'assegnazione illegale
  // delle proprietà nome ed età.
  set nome(String nuovoNome) {
    if (nuovoNome.isNotEmpty) {
      //! Impediamo che venga passato un nome vuoto
      _nome = nuovoNome;
    } else {
      print("Nome vuoto, non valido");
    }
  }

  set eta(int nuovaEta) {
    if (nuovaEta > 0) {
      //! Impediamo che venga passata un'età non positiva
      _eta = nuovaEta;
    } else {
      print("Richiesta un'età maggiore di zero");
    }
  }

  //* Proprietà e metodi statici non sono accessibili tramite un oggetto,
  //* ma solamente tramite la definizione stessa della classe.
  //
  // I metodi d'istanza possono usare variabili e metodi statici,
  //! ma non è possibile il contrario.
  static String specie = "Umana";
  static void presentaSpecie() => print("La specie $specie è composta da [Persona]");
}
