void main() {
int age = 30; // Beispielwert, kann geändert werden
String sex = "male";// kann zu "female" geändert werden
switch (sex) {
   case "male":
     switch (age) {
       case 20 :
       case 21 :
       case 22 :
       case 23 :
       case 24 :
       case 25 :
         print("Im Schnitt 181,4m");
         break;
       case 26 :
       case 27 :
       case 28 :
       case 29 :
       case 30 :
         print("Im Schnitt 181,3m");
         break;
       case 31 :     // 31–35 Jahre: 180,4 cm → kleiner.  ,, zum Hinweis: Menschen werden im Alter etwas kleiner, daher nimmt die Durchschnittsgröße mit dem Alter leicht ab
       case 32 :
       case 33 :
       case 34 :
       case 35 :
         print("Im Schnitt 180,4m");
         break;
     }
    break; // Hier wird der Break benötigt, um die switch-Anweisung zu beenden, nachdem
            // die passende Altersgruppe für  männlich gefunden wurde. betrifft switch (sex)
   case "female":
     switch (age) {
       case 20 :
       case 21 :
       case 22 :
       case 23 :
       case 24 :
       case 25 :
         print("Im Schnitt 167,5m");
          break;
       case 26 :
       case 27 :
       case 28 :
       case 29 :
       case 30 :
         print("Im Schnitt 167,3 m");
          break;
       case 31 : // 31–35 Jahre: 180,4 cm → kleiner.  ,, zum Hinweis: Menschen werden im Alter etwas kleiner, daher nimmt die Durchschnittsgröße mit dem Alter leicht ab
       case 32 :
       case 33 :
       case 34 :
       case 35 :
         print("Im Schnitt 167,2");
     }
    break;
    default:
      print("Geschlecht nicht erkannt");
      // Hier wird der Default-Fall behandelt, falls das Geschlecht nicht erkannt wird.
      // Dies ist nützlich, um sicherzustellen, dass das Programm nicht abstürzt,
      // wenn ein unbekanntes Geschlecht eingegeben wird.
      // In diesem Fall wird eine Fehlermeldung ausgegeben.
 }
}