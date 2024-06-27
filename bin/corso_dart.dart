// Se vogliamo usare codice di altri file dal lib, dobbiamo importare quei file,
// attraverso la sintassi ```import 'package:<nome_progetto>/<percorso_file>';```
import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) {
  // Qui invochiamo la funzione calculate() e salviamo il risultato nella
  // variabile result.
  int result = calculate();

  print(result);

  // Per passare parametri nominali si usa la sintassi:
  //* <nome_parametro>: <valore>
  salutaNominali(nome: 'Antonio', cognome: 'Lentini');
}
