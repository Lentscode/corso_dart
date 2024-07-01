// Una classe è una struttura dati che rappresenta un'entità, un modello,
// un oggetto reale, qualsiasi cosa
class Auto {
  //* Variabili appartenenti alla classe sono dette proprietà
  final String marca;
  final String modello;
  final int anno;

  //* Funzioni appartenenti alla classe sono dette metodi
  //. Da notare che possiamo accedere alle proprietà della classe
  //. all'interno dei metodi
  void accelera() => print("$marca $modello sta accelerando");
  void frena() => print("$marca $modello sta frenando");
  void _accensione() =>
      print("$marca $modello è accesa"); //? Qualsiasi cosa preceduto da un `_` è utilizzabile SOLO nello stesso file

  //* Un costruttore è una funzione speciale che crea un'oggetto del
  //* tipo della classe, in questo caso [Auto].
  // In esso inizializziamo tutte le proprietà della classe.
  // Essendo una funzione, possiamo avere tutti i tipi di parametri che vogliamo.
  Auto(this.marca, this.modello, this.anno) {
    //. Se tutte le proprietà sono `final`, possiamo avere un costruttore `const`, ma non se è presente un body, 
    //. che viene eseguito alla creazione dell'oggetto, dopo la lista di inizializzazione
    _accensione();
  }

  //* Dopo la definizione del costruttore, viene la lista di inizializzazione,
  //* che permette di inizializzare completamente le proprietà o modificare i parametri
  //* a piacimento.
  // Può essere utile in costruttori alternativi a quello base (anonimo), detti nominali.
  const Auto.audi({required this.modello, required this.anno}) : marca = "Audi";

  Auto.dEpoca({required this.anno, required this.marca, required this.modello})
      : assert(anno < 1960,
            "Un auto d'epoca dev'essere risalente a prima del 1960"); //. Possiamo anche controllare, attraverso `assert`, che la creazione avvenga correttamente
}
