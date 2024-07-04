// In questa funzione d'esempio, ritorniamo la divisione con resto tra due interi.
// Se però il divisore è 0, non possiamo eseguire l'operazione, quindi per prevenirlo
// lanciamo un'eccezione creata da noi.
int divide(int a, int b) {
  if (b == 0) {
    throw DivideByZeroException(); //. In Dart, può essere lanciato qualsiasi cosa.
  }
  return a ~/ b;
}

class DivideByZeroException {}
