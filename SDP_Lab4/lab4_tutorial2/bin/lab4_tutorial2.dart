import 'package:lab4_tutorial2/lab4_tutorial2.dart' as lab4_tutorial2;
import 'dart:math';

void main(List<String> arguments) {
  // print('Hello world: ${lab4_tutorial2.calculate()}!');

  /*A nullable type can contain the nullvalue in addition to its 
own data type. You can easily tell the type is nullable 
because it ends with a question mark (?), which is like 
saying, “Maybe you’ve got the data you want or maybe 
you’ve got null.*/

  // Mini-exercises
  // 1)
  String? profession;
  print(profession);

  // 2)
  profession = 'basketball player';
  print(profession);

  // 3)
  const iLove = 'Dart';

  /*Null assertion operator (!)
  if you’re absolutely sure that a variable isn’t null, you can turn it into a non-nullable type by using the Null assertion operator (!), or sometimes more generally referred to as the "bang operator".
  int x = nullableButNotNullInt!; //throw an exception if it's null.
  */

  // Null-aware cascade operator (?..)
  //  You only need to use ?.. forthe first item in the chain. If
  // user is null, then the chain will be short-circuited, that is,
  // terminated, without calling the other items in the cascade
  // chain.

  // null-aware access operator (?.)
  // Null-aware index operator (?[])
  // late keyword => for runtime initialization of variable

  // Challenges
  // ch 1):Random nothing
  int result = random() ?? 0;
  print(result);

  // ch:2) : Naming customs
  var name1 = Name("Bob");
  print(name1);
  var name2 = Name("Luois", "Bob", true);
  print(name2);
  var name3 = Name("Bob", "Luois", false);
  print(name3);
}

int? random() {
  int number = Random().nextInt(2);
  if (number == 1)
    return 42;
  else
    return null;
}

class Name {
  Name(this.givenName, [this.surname, this.surnameIsFirst]) {
    if (surnameIsFirst != null) {
      if (surnameIsFirst!) {
        String temp = givenName;
        givenName = surname!;
        surname = temp;
      }
    }

    surname = surname ?? "not given";
  }

  String givenName;
  String? surname;
  bool? surnameIsFirst;

  @override
  String toString() {
    return 'Name(surname : $surname, Name: $givenName)';
  }
}
