
 void main() {
// Test 1
int age = 15;
bool hasParentalConsent = true;
int movieAgeRating = 16;
int ageTest = movieAgeRating - age ; 
//Die Person hat Eltern-Erlaubnis und ist nicht mehr als 2 Jahre zu jung. hasParentalConsent && (movieAgeRating - age) <= 2  
if (age >= movieAgeRating || hasParentalConsent && ageTest<= 2) {
  print('You can watch the movie.');
} else {
  print('You cannot watch the movie.');
}
// Test 2
int ageo = 13;
bool hasParentalConsento = false;
int movieAgeRatingo = 16; 
//Die Person hat Eltern-Erlaubnis und ist nicht mehr als 2 Jahre zu jung. hasParentalConsent && (movieAgeRating - age) <= 2  
if (ageo >= movieAgeRatingo ||(hasParentalConsento && (movieAgeRatingo - age) <= 2)) {
  print('You can watch the movie.');
} else {
  print('You cannot watch the movie.');
}
  
}
