import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

enum Weather { sunny, snowy, cloudy, rainy }

enum AudioState { playing, pushed, stopped }

void main(List<String> arguments) {
  // print('Hello world: ${lab2_tutorial4.calculate()}!');

  // Control flow

  /*
  const bool yes = true;  //Dart only allows true/false value of boolean variable
  // commonly use to compare values
  */

  /*
  //Testing equality=> '=='
  var num = (1 == 1.0); //true, num is type of bool
  num = (1 == 1.2); //false
  print(num);

  // Testing inequality => ('!=' / !(==))
  const n2 = 1 != 2;
  const n3 = !(1 == 2);
  print('$n2 $n3');

  // Testing greater and less than => '<','>','<=','>='
  print(1 > 2);
  print(12 <= 3);
  */

/*
  // Boolean logic

  // AND operator
  const stmt1 = true && true;
  print(stmt1);

  // OR operator
  const stmt2 = true || true;
  print(stmt2);

  // operator precedence(high to low)=>(! // >=,>,<=,< // ==,!= // && // ||)
  const andTrue = 1 < 2 && 4 > 3; //((1<2) && (4>3))
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  print(andTrue);
  print(andFalse);
  print(orTrue);
  print(3 > 4 && 1 < 2 || 1 < 4); //((3 > 4 && 1<2) || 1<4)=> true

  // Overriding precedence with parentheses
  print(3 > 4 && (1 < 2 || 1 < 4)); //false
*/

/*
  // String equality
  const guess = 'dog';
  print(guess == "cat");

  // miniexercise
  // 1)
  const int myage = 14;
  const isTeenager = (myage >= 13 && myage <= 19);
  print(isTeenager); //true

  // 2)
  const maryage = 30;
  const bothTeenagers =
      (myage >= 13 && myage <= 19) && (maryage >= 13 && maryage <= 19);
  print(bothTeenagers);

  // 3)
  String reader = 'Meri';
  String ray = 'Ray Wenderlich';
  final bool rayIsReader = (reader == ray);
  print(rayIsReader);
*/

/*
  // The if statement
  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  // The else clause
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  // Else-if chains
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);
*/

/*
  // Variable scope
  const global = 'Hello, world';
  void main() {
    const local = 'Hello, main';
    if (2 > 1) {
      const insideIf = 'Hello, anybody?'; //local variable to the if block
      print(global);
      print(local);
      print(insideIf);
    }
    print(global);
    print(local);
    // print(insideIf); // Not allowed! //Error: Undefined name 'insideIf'.
  }
*/

/*
  // The ternary conditional operator
  const score = 83;
  const msg = (score >= 60) ? 'you passed' : 'you failed';
  print(msg);
*/

/*
  // miniexercise
  // 1)
  const myAge = 15;
  if (myAge >= 13 && myAge <= 19)
    print('Teenager');
  else
    print('Not Teenager');

  // 2)
  print((myAge >= 13 && myAge <= 19) ? 'Teenager' : 'Not Teenager');
*/

/*
  // Switch statements => : Based on the value of the variable in parentheses, which can be an int, String or compile-time constant.
  const number = 3;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  // Switching on strings
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }
*/

/*
  // Enumerated types =>in Dart, it’s customary to write the enum name with an initial capital letter,
  // The values of an enum should use lowerCamelCase unless you have a special reason to do otherwise.
  // enum Weather{ sunny, snowy, cloudy, rainy} //van't define inside main, can be define st global scope

    const weatherToday = Weather.cloudy;
    switch (weatherToday) {
      case Weather.sunny:
        print('Put on sunscreen.');
        break;
      case Weather.snowy:
        print('Get your skis.');
        break;
      case Weather.cloudy:
      case Weather.rainy:
        print('Bring an umbrella.');
        break;
    }

    // Enum values and indexes
    final index = weatherToday.index;
    print(index);
    */

  // miniexercise
  // 1)=>declared in globalscope

  // 2)
  const audioState = AudioState.pushed;
  switch (audioState) {
    case AudioState.playing:
      print('Playing');
      break;

    case AudioState.pushed:
      print('pushed');
      break;

    case AudioState.stopped:
      print('stopped');
      break;
  }
}
