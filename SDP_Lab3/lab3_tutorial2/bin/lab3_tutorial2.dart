import 'dart:math';

import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;

var myPreciousData = 5782;
String anInnocentLookingFunction(String name) {
  // side effect => changing global variable inside function
  myPreciousData = -1;
  return 'Hello, $name. Heh, heh, heh.';
}

compliment2(number) {
  return '$number is a very nice number.';
}

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial2.calculate()}!');

  // Functions => useful for reusability of code
  // DRY => Don't repeat yourself (This term was originally coined in the book The Pragmatic Programmer by Andrew Hunt and David Thomas.)

  // In Dart, a function consists of a return type, a name,a parameterlist in parentheses and a body enclosed in braces.

/*
  // simple example of function
  const input = 12;
  final output = compliment(input);
  print(output);
  */

/*
  // Multiple arguments
  helloPersonAndPet('Fluffy', 'Chris');
*/

/*
  // Making parameters optional => (type? var_name)
  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));
  */

/*
  // Providing default values
  print(withinTolerance(5)); //true
  print(withinTolerance(15)); //false
  print(withinTolerance(9, 7, 11)); // true
  print(withinTolerance(9, 7)); // true

  // Naming parameters
  // with braces => you must use the parameter name while providing argument to function
  // with square bracket => it's optional
  print(withinTolerance2(9, min: 7, max: 11)); // true
  print(withinTolerance2(5, min: 7)); //false
  print(withinTolerance2(15, max: 20)); //true
  */

/*
  // Making named parameters required
  print(withinTolerance3(value: 9, min: 7, max: 11));

  // pure functions => You can rely on them to do exactly what you expect because they always return the same output for any given input without side effects
  // */

/*
  // Doing only one thing =>If a function is too big, or contains unrelated parts, consider breaking it into smaller functions.

  // Single responsibility principle => If you find yourself adding comments to describe different sections of a complex function, that’s usually a good clue that you should break your function up into smaller functions.
*/

/*
  // Choosing good names
  // pure fuunctions => use noun phrases(e.g.getAverageTemperature)
  // side effect function and function does not have lots of work => use verb phraes(e.g.printHello)
*/

/*
  // optional types => Dart is an optionally-typed language, so it’s possible to omit the types from your function declaration.
  print(compliment2(3.5)); //3.5 is a very nice number.
  */

/*
  // mini-exercises
  // 1)
  print(youAreWonderful('Bob'));

  // 2)
  print(youAreWonderful('Bob', 15));

  // 3)
  print(youAreWonderful2(name: 'Bob'));
  */

/*
  // Anonymous functions => function without name

  // First-class citizens
  // Assigning functions to variables
  int number = 4;
  String greeting = 'hello';
  Function multiply = (int a, int b) {
    return a * b;
  };
  print(multiply(3, 2));

  // we can't give fuction name to func. expression
  // Function myFunction = int multiply(int a, int b)
  // {return a * b;};
  */

/*
  // Passing functions to functions
  void namedFunction(Function multiply) {}

  // Returning functions from functions
  Function namedFunction2() {
    return () {
      print('hello');
    };
  }

  var funRet = namedFunction2();
  funRet();

  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  */

/*
  // Anonymous functions in forEach loops
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });
  */

/*
  // Closures and scope
  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };

    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1()); // 1
  print(counter2()); // 1
  print(counter1()); // 2

  */

/*
  // mini-exercise
  // 1)
  var wonderful = ((String name, int numberPeople) {
    return 'You are wonderful,$name.$numberPeople';
  });
  print(wonderful('Bob', 10));

  // var wonderful = ((String name, int numberPeople) =>
  //   print( 'You are wonderful,$name.$numberPeople')
  // );

  // 2)
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((element) {
    print(wonderful(element, 5));
  });
  */

/*
  // Arrow functions(  (parameters) => expression; )
  int add(int a, int b) => a + b;

  final multiply = (int a, int b) => a * b;
  print(multiply(3, 6));

  final numbers = [1, 2, 7];
  numbers.forEach((number) => print(number * 3));

  // Mini-exercise
  numbers.forEach((number) => print("You're wonderful"));
  */

  // Challenges
  // ch:1) prime num
  bool isPrime(var n) {
    for (int i = 2; i < sqrt(n); n++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  print(isPrime(3));

  // ch:2) Can you repeat that?
  int repeatTask(int times, int input, Function task) {
    for (int i = 0; i < times; i++) {
      input = task(input);
    }

    return input;
  }

  Function task = ((int n) {
    return n * n;
  });
  print(repeatTask(4, 2, task));

  // ch:3 Darts and arrows
  Function task2 = (int n) => n * n;

  print(repeatTask(4, 2, task2));
}

youAreWonderful(String name, [int numberPeople = 10]) {
  return 'You are wonderful,$name.$numberPeople';
}

String youAreWonderful2({required String name, int numberPeople = 10}) {
  return "You are wonderful,$name.$numberPeople";
}

String compliment(int number) {
  return '$number is a very nice number.';
}

void helloPersonAndPet(String person, String pet) {
  print('Hello, $person, and your furry friend,$pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

bool withinTolerance2(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

bool withinTolerance3({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}
