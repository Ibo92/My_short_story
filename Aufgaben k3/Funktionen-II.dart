//Aufgabe 1 ,,Erstelle eine Funktion, die 3 ganze Zahlen als Parameter entgegennimmt und deren Summe zurückgibt
int summe(int a,int b,int c)
{  return a+b+c;}
// Aufgabe 2 ,, Erstelle eine Funktion, die einen Text als Parameter entgegennimmt und die Anzahl der Zeichen dieses Textes zurückgibt.
int letterNumberOfText(String txt)
{return txt.length;} 

// Aufgabe 3 ,, Erstelle eine Funktion, die einen Text als Parameter entgegennimmt und die Anzahl der Zeichen dieses Textes zurückgibt.
int numberOfVowels(String text)
{
  int c =0; // Zählt die Vokale in einem Wort
  String vowels = "AEIOUaeiou";
  for(int i=0; i<text.length; i++)
  {if (vowels.contains(text[i]))
  {c++;}}
  return c;
}
void main()
{
  // Aufgabe 1
  print('Erste Summe ist: ${summe(1,1,8)}');
  print('Zweite Summe ist: ${summe(1,1,18)}');
  print('Dritte Summe ist: ${summe(2,8,20)}');

  // Aufgabe 2
  String word1 = "Ibo";
  String word2 = "Mag";
  String word3 = "Papageien";
  print("Anzahl der Zeichen vom: '$word1' ist: ${letterNumberOfText(word1)}");
  print("Anzahl der Zeichen vom: '$word2' ist: ${letterNumberOfText(word2)}");
  print("Anzahl der Zeichen vom: '$word3' ist: ${letterNumberOfText(word3)}");

  // Aufgabe 3
  String text1 = "Ibo";
  String text2 = "Mag";
  String text3 = "Papageien";
  print('Anzahl der Vokale vom: $text1 ist ${numberOfVowels(text1)}');
  print('Anzahl der Vokale vom: $text2 ist ${numberOfVowels(text2)}');
  print('Anzahl der Vokale vom: $text3 ist ${numberOfVowels(text3)}');
  
}