import "dart:io";
/// Enum mit Transportmitteln
enum Transportmittel { auto, zug, fahrrad, bus }
void main() {
  // Schritt 1: Alle verfügbaren Transportmittel anzeigen
  print("🚗 Wähle dein Transportmittel:");
  for (var tm in Transportmittel.values) {
    print("- ${tm.name}");
  }
  // Reiseroute mit Distanzen
  Map<String, int> reiseroute = {"Max": 120, "Peter": 90, "Anna": 270, "Lena": 180 };

  // Geschwindigekeit fest
  //int geschwindigkeit = 90; // km/h

  //Eingabe der Geschwindigkeit
  print("Bitte gib die Geschwindigkeit in km/h ein:");
  String? eingabe = stdin.readLineSync();
  int geschwindigkeit = int.parse(eingabe ?? "90");

  //Fahrzeitberechnung
  double zeitMax = reiseroute["Max"]! / geschwindigkeit; // Zeit für Max
  double zeitPeter = reiseroute["Peter"]! / geschwindigkeit; // Zeit für Peter
  double zeitAnna = reiseroute["Anna"]! / geschwindigkeit; // Zeit für Anna
  double zeitLena = reiseroute["Lena"]! / geschwindigkeit; // Zeit für Lena

  //Gesamtdistanz und Fahrzeit
  int gesamtKm = reiseroute["Max"]! +
      reiseroute["Peter"]! +
      reiseroute["Anna"]! + 
      reiseroute["Lena"]!;     // Gesamtdistanz

  double gesamtZeit = zeitMax + zeitPeter + zeitAnna + zeitLena; // Gesamte Fahrzeit

  //Durchschnittswerte
  int anzahlFreunde = reiseroute.length; // Anzahl der Freunde
  if (anzahlFreunde == 0) {
    print("Keine Freunde in der Reiseroute.");
    return;
  } 
  double durchschnittKm = gesamtKm / reiseroute.length; // Durchschnittliche Distanz
  double durchschnittZeit = gesamtZeit / reiseroute.length; // Durchschnittliche Zeit
  //Eingabe von Freunden
 
  print("🚗 Bitte gib mindestens 3 Freunde mit Name und Entfernung ein.");

  for (int i = 1; i <= 3; i++) {
    stdout.write("Name von Freund $i: ");
    String? name = stdin.readLineSync();

    stdout.write("Entfernung zu $name (in km): ");
    String? distanzEingabe = stdin.readLineSync();

    int distanz = int.tryParse(distanzEingabe ?? "") ?? 0;

    if (name != null && name.isNotEmpty && distanz > 0) {
      reiseroute[name] = distanz;
    } else {
      print("❌ Ungültige Eingabe – bitte wiederholen.\n");
      i--; // Schleife zurücksetzen
    }
  }

    
  //Ausgabe der Ergebnisse
  print("Deine Reiseroute bei $geschwindigkeit km/h:");
  print("1. Max: ${reiseroute["Max"]} km, Zeit: ${zeitMax} Stunden");
  print("2. Peter: ${reiseroute["Peter"]} km, Zeit: ${zeitPeter.toStringAsFixed(2)} Stunden");
  print("3. Anna: ${reiseroute["Anna"]} km, Zeit: ${zeitAnna.toStringAsFixed(2)} Stunden");
  print("4. Lena: ${reiseroute["Lena"]} km, Zeit: ${zeitLena.toStringAsFixed(2)} Stunden");
  print("Gesamtdistanz: $gesamtKm km");
  print("Gesamtfahrzeit: ${gesamtZeit.toStringAsFixed(2)} Stunden");
  print("Durchschnittliche Distanz: ${durchschnittKm.toStringAsFixed(2)} km");
  print("Durchschnittliche Zeit: ${durchschnittZeit.toStringAsFixed(2)} Stunden");
  print("\ Eingetragene Reiseroute:");
  reiseroute.forEach((name, km) {
    print("- $name: $km km");
  });
  print("Ende!");
  print("Gute Fahrt!");
  print("Ende der Reiseroute.");
  print("Ende der Berechnung.");

}