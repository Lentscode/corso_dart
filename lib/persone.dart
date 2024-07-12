// Una libreria contiene del codice da usare in altre parti di un progetto
// o in altri progetti.
//? Per creare una libreria si usa la keyword `library`
library persone;

// Per inserire dei file di codice all'interno di una libreria esistono due modi:
// - `export`, che ci consente di esportare solo determinate classi e funzioni;
// - `part` e `part of`, il cui vantaggio sta nell'avere un unico file principale
//   con altri file secondari che vanno ad unirsi.

// La sintassi con `export` è la seguente.
// export "persona.dart" hide Persona; //. "Nascondiamo" [Persona] per impedirne l'utilizzo.

// `part` si usa nel file principale.
part "persona.dart";
