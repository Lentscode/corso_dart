// Ovviamente possiamo creare funzioni che si avvalgono di tipi generici,
// accettando e/o ritornando valori di tipo non definito.
//? Possiamo addirittura imporre che il tipo ne estenda un altro.
T operazione<T extends num>(T a, T b) {
  if (a is int && b is int) {
    return a * b as T;
  } else if (a is double && b is double) {
    return a / b as T;
  } else {
    return a;
  }
}
