//* La keyword `implements` obbliga una classe a re-implementare
//* le proprietà e i metodi di un'altra classe.
//
//. È utile quando si vogliono creare classi che assumono gli stessi compiti
//. e si vuole essere sicuri che abbiano gli stessi metodi e proprietà.

//* Una classe `abstract` ci consente di avere metodi astratti,
//! ma non può essere istanziata, non può essere creato un oggetto di essa.
abstract class DataFetcher {
  List<Object?> raccogliDati();
  void mandaDati();
}

// L'implementazione richiede appunto che vengano sovrascritti
// i metodi della classe implementata.
class OnlineDataFetcher implements DataFetcher {
  @override
  void mandaDati() {
    // TODO: implement mandaDati
  }

  @override
  List<Object?> raccogliDati() {
    // TODO: implement raccogliDati
    throw UnimplementedError(); //! Se non implementiamo questo, farà scattare un errore.
  }
}

class OfflineDataFetcher implements DataFetcher {
  @override
  void mandaDati() {
    // TODO: implement mandaDati
  }

  @override
  List<Object?> raccogliDati() {
    // TODO: implement raccogliDati
    throw UnimplementedError();
  }
}
