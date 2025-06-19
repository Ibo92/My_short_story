
void main() {
  //Aufgabe 1
  printNumber(1);
  //Aufgabe 2
  triplePrint("");
  //Aufgabe 3
  reverseInitials("Lennart", "Kosovo");      
  reverseInitials("Ibo", "Bibo");     
  reverseInitials("Lina", "Müller");     
}
//Aufgabe 1
void printNumber(int z)
{
for(int i=0; i<3; i++) // Schleife für 3 Zahlen
{
  if(i==0) //hier wird gepfrüft,ob die Zahlen verschiedene Werte haben
  {print("Erste Zahl:$z");z++;
  }else if(i==1){print("Zweite Zahl:$z");z++;
  }else {{print("Dritte Zahl:$z");z++;
  }}}}
//Aufgabe 2
void triplePrint(String text)
{
List<String> names=["Ibo","Lennart","JP"];
for(int i=0; i<3; i++)
{
  print("${names[i]} ist da! $text");
}
}
//Aufgabe 3
void reverseInitials(String firstName, String lastName) {
  String lastLetterFirstName = firstName[0].toUpperCase();// Ich habe hier die erste Buchstabe des Vornamen geprintet. Zeile darunter ist letze Buchstabe 
  //String lastLetterFirstName = firstName[lastName.length - 1].toUpperCase();//firstName.length - 1: liefert den Index des letzten Buchstabens im Vornamen.
  String lastLetterLastName = lastName[lastName.length - 1].toUpperCase();

  print('$lastLetterFirstName.$lastLetterLastName.');
}