void main() {
  // Liste hat immer 3 Elemente , mit möglichen null-Werten
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Hilf-Funktion zur Berechnung des Durchschnitts mit null-Werten
  /* calculateAverage() ist eine Hilfsfunktion, die: null-Werte herausfiltert, prüft, ob überhaupt gültige Werte vorhanden sind, und dann den Durchschnitt berechnet.
  Eine Hilfsfunktion calculateAverage wurde erstellt, die null-Werte ignoriert. Die Funktion zählt nur vorhandene Werte für die Durchschnittsberechnung*/
  double? calculateAverage(List<double?> values) {
    double sum = 0;
    int count = 0;
    
    for (var value in values) {
      if (value != null) {
        sum += value;
        count++;
      }
    }
    
    return count > 0 ? sum / count : null;
  }
  // Extrahiere Werte für alle drei Kategorien. (temp, rain, wind)
  // Hier wird angenommen, dass die Liste immer 3 Elemente hat.
  // Wenn weniger als 3 Elemente vorhanden sind, sollte eine Fehlerbehandlung erfolgen.
  /* Fehlende Typangabe List<Map<String, double?>> korrigiert
     Überflüssige Klammer nach dem letzten temps.add() entfernt 
     Falsche geschweifte Klammern in der Durchschnittsberechnung durch runde ersetzt*/
  List<double?> temps = [
    weatherData[0]['temp'],
    weatherData[1]['temp'],
    weatherData[2]['temp']
  ];
  
  List<double?> rains = [
    weatherData[0]['rain'],
    weatherData[1]['rain'],
    weatherData[2]['rain']
  ];
  
  List<double?> winds = [
    weatherData[0]['wind'],
    weatherData[1]['wind'],
    weatherData[2]['wind']
  ];

  // Berechne Durchschnittwerte für jede Kategorie
  double? avgTemp = calculateAverage(temps);
  double? avgRain = calculateAverage(rains);
  double? avgWind = calculateAverage(winds);

  // Ausgabe der Ergebnisse.   toStringAsFixed(1) sorgt für eine schön gerundete Ausgabe mit einer Nachkommastelle.
  print('Durchschnittstemperatur: ${avgTemp?.toStringAsFixed(1) ?? "keine Daten"}°C');
  print('Durchschnittsniederschlag: ${avgRain?.toStringAsFixed(1) ?? "keine Daten"}mm');
  print('Durchschnittswindgeschwindigkeit: ${avgWind?.toStringAsFixed(1) ?? "keine Daten"}km/h');
}