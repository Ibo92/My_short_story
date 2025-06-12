void main() { // Ich muss hier 4 Variablen anlegen, die ich dann in den switch-Anweisungen verwenden kann. Laut der Aufgabestellung.
   String characterClass = 'mage'; // kann geändert werden ...warrior, mage, archer
   String timeOfDay = 'night';     // morning, noon, evening, night
   String weather = 'stormy';      // sunny, rainy, stormy
   int baseAttack = 90; // Es müssen hier keine Benutzereingaben eingelesen werden.
    // Der Basisangriffswert kann geändert werden, aber er sollte im Bereich von 1 bis 100 liegen.
  int finalAttack = baseAttack;

  switch (characterClass) {
    case 'warrior':
      switch (timeOfDay) {
        case 'morning':
        case 'noon':
        case 'evening':
          finalAttack += 20;
          break;
        case 'night':
          finalAttack -= 10;
          break;
      }
      break;

    case 'mage':
      switch (weather) {
        case 'stormy':
          finalAttack += 30;
          break;
        case 'sunny':
          finalAttack -= 15;
          break;
        case 'rainy':
          // keine Änderung
          break;
      }
      break;

    case 'archer':
      switch (weather) {
        case 'sunny':
          finalAttack += 15;
          break;
        case 'rainy':
          finalAttack -= 20;
          break;
        case 'stormy':
          finalAttack -= 5;
          break;
      }
      break;

    default: //Wenn keine der case-Bedingungen passt – also weder 'warrior', 'mage' noch 'archer' –, wird dieser Block ausgeführt.
      print('Unbekannte Klasse: $characterClass');
      return; // Beende die main() Funktion, wenn die Klasse unbekannt ist. Also Es wird keine Angriffsstärke berechnet und Der Rest des Codes wird übersprungen.


  }

  // Begrenze den Wert auf 1–100
  finalAttack = finalAttack.clamp(1, 100);

  // Angemessener Text
  String texte; // Hier wird der Text basierend auf der finalen Angriffsstärke festgelegt. 
  if (finalAttack >= 80) {
    texte = 'Sehr gefährlich!';
  } else if (finalAttack >= 50) {
    texte = 'Ganz ordentlich.';
  } else {
    texte = 'Nicht optimal...';
  }

  print(
    'Dein ${characterClass == 'archer' ? 'Bogenschütze' : characterClass == 'mage' ? 'Magier' : 'Krieger'} ' // Hier wird der Charaktername basierend auf der Klasse festgelegt. 
    'hat bei $weather und $timeOfDay eine Angriffsstärke von $finalAttack! $texte'
  );
}