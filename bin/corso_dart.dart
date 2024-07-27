import 'package:corso_dart/corso_dart.dart';

void main(List<String> arguments) {
  // Un record in Dart è una struttura dati immutabile che può contenere un insieme fisso di valori.
  // I record sono utili per raggruppare più valori senza dover definire una classe.

  // Definizione di un record con tre campi: un intero, un double nominato 'pi', e una stringa.
  final record1 = (6, pi: 3.14, "Ciao");
  // Questo record ha due campi posizionali (6 e "Ciao") e un campo nominato 'pi'.

  // Accesso ai campi del record usando la notazione posizionale.
  print(record1.$1); // Stampa 6 - accede al primo campo posizionale.
  print(record1.$2); // Stampa "Ciao" - accede al secondo campo posizionale.
  // Accesso a un campo nominato del record.
  print(record1.pi); // Stampa 3.14 - accede al campo nominato 'pi'.

  // I record possono essere passati come argomenti a funzioni o restituiti da esse.
  final record2 = swap((3, b: 4));

  // Accesso ai campi del record restituito da 'swap'.
  print(record2.$1); // Stampa il primo campo del record restituito.
  print(record2.a); // Accede a un campo nominato 'a' del record restituito.
  // Nota: il campo 'a' è stato probabilmente creato dalla funzione swap.

  // Definizione di un altro record con due campi interi.
  // Questo è un record con due campi posizionali.
  final record3 = (3, 4);

  // Confronto tra record
  // Confronta l'uguaglianza dei valori dei record.
  // Due record sono considerati uguali se hanno gli stessi campi con gli stessi valori.
  print(record2 == record3);
  // Tuttavia, il risultato sarà `false`, perché il 4 in [record2] è nominato, mentre in [record3] è
  // posizionale.

  // Confronta i tipi runtime dei record.
  // I tipi dei record dipendono dal numero, tipo e nomi dei loro campi.
  print(record2.runtimeType == record3.runtimeType);

  // Destrutturazione di un record restituito da una funzione.
  // La destrutturazione permette di estrarre i valori di un record in variabili separate.
  final (nome, cognome) = recuperaNomeECognome("Antonio Lentini");

  // Stampa dei valori destrutturati.
  print("Nome: $nome");
  print("Cognome: $cognome");
}
