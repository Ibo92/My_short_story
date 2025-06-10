//wenn Ich die Werte selber eingeben möchte 
 import "dart:io";
 void main() {
  // Alter eingeben
stdout.write('wie alt bist du?');
int age = int.parse(stdin.readLineSync()!);
// Eltern-Erlaubnis eingeben
stdout.write('Hast du die Erlaubnis deiner Eltern? (ja/nein): ');
  String consentInput = stdin.readLineSync()!.toLowerCase();
  bool hasParentalConsent = consentInput == 'ja';
// Altersfreigabe des Films eingeben
  stdout.write('Wie alt muss man für den Film mindestens sein? ');
  int movieAgeRating = int.parse(stdin.readLineSync()!);
  //Prüfung 
int ageTest = movieAgeRating - age ; 
//Die Person hat Eltern-Erlaubnis und ist nicht mehr als 2 Jahre zu jung. hasParentalConsent && (movieAgeRating - age) <= 2  
if (age >= movieAgeRating || hasParentalConsent && ageTest<= 2) {
  print('du darfst den Film sehen');
} else {
  print('du darfst den Film nicht sehen, du bist noch klein');
}

  
}
