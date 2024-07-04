import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) {
  //* Usiamo il blocco `try` per "provare" ad eseguire del codice.
  // In caso di errore, il flusso del programma viene interrotto.
  try {
    final result = divide(5, 0);
    print(result);

    //* Possiamo intercettare un'eccezione specifica usando la keyword `on`.
    // Se ne abbiamo bisogno, possiamo anche accedere all'errore tramite `catch`.
  } on DivideByZeroException catch (e) {
    print("Non puoi dividere un numero per 0 $e");

    //* `catch` intercetta qualsiasi tipo di errore.
  } catch (e) {
    print("Errore: $e");
    rethrow; //? Questa keyword rilancia la stessa eccezione intercettata

    //* Nel blocco `finally`, inseriamo codice che vogliamo che si esegua in caso 
    //* di errore e non.
  } finally {
    print("Se non l'avessi capito, non puoi dividere per 0");
  }
}
