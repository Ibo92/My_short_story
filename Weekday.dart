enum Weekday { monday, tuesday, wednesday, thursday, friday, saturday, sunday }
void main(){
final weekday = Weekday.sunday; //Beispielwert, kann geändert werden
switch (weekday) {
  case Weekday.monday:
  case Weekday.tuesday:
  print('Montage und Dienstage sind anstrengend');
    break;
  case Weekday.wednesday:
  case Weekday.thursday:
  print('Mittwoche und Donnerstage sind okay');
    break;
  case Weekday.friday:
  print('Freitage sind super');
    break;
  case Weekday.saturday:
  case Weekday.sunday:
  print('Wochenenden sind entspannend');
    break;
  /*default:
  print('kein Tag ausgewählt'); *///ich nehme hier default raus, weil ich alle Enum Werte verwendet habe. Wäre dem Fall , dass ich 2 Enum Werte geutzt hätte, dann ist defult sinnvoll zu setzten. Ansonsten wird hier überflüßig sein.
  
}

}