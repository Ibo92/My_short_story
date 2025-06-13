void main(){ 
 List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = ['Julietta', 'Benjamino', 'Hans-Günther','Evalinea', 'Fiona', 'Gregory', 'Leonhart'];

  // 1 - Alle Namen mit einer for-in Schleife ausgeben
  for (String name in names) {
    print(name);
  }

  // 2 - Durchschnitt der Punkte berechnen
  int summe = 0;
  for (int point in points) {
    summe += point;
  }

  double durchschnitt = summe / points.length;

  print('Der Durchschnitt der Punkte ist: $durchschnitt');
  
}