import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main(List<String> arguments) {
  // print('Hello world: ${lab2_tutorial3.calculate()}!');

  // Types and operations

  // Datatypes in dart
  //    root of all the types => object type
  //    /     |      |     |    \
  //   /      |      |     |     \
  // int, double, num, dynamic, String
  // (sub types)

  // Annotating variables explicitly & Creating constant variables
  // with const
  // const int myInteger = 10;
  // const double myDouble = 3.14;

  // with final
  // final int myInteger = 10;
  // final double myDouble = 3.14;

  // mutable and immutable data
  // mutable : can  be change at any time
  // immutable : we can trust that no one will change that value  after creation of it

  // type inference process : figure out the type by it's own if data type is not explicitly specified, not all programming language has this.
  // this is the key component behind the dart's power as a language.

  // Checking the inferred type in VS Code : by moving the cursor over the variable name.

  /*
  // Checking the type at runtime: using 'is' keyword / 'runtimeType' property of variable
  num myNumber = 3.14;
  print(myNumber is double);
  print(myNumber is int);
  print(myNumber.runtimeType);
  */

  /*
  // Type conversion
  // double:(64-bit floating point number)
  // decimal: (128-bit floating point number)
  // in dart, we are not allowed to cast to a sibling type(like int to double) we can only cast down to a subtype.
  var integer = 100;
  var decimal = 12.5;
  //integer = decimal; // Error: A value of type 'double' can't be assigned to a variable of type 'int'.
  //decimal = integer;

  // in dart implicit conversion is not allowed, so we need to do explicit conversion.
  integer = decimal.toInt();
  print(integer);
  */

/*
  // operator with mixed types(allows multiple types)
  // result type = biggest types among all operands

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // const totalCost = hourlyRate * hoursWorked;
  // print(totalCost);

  // explicit type can be done
  // const totalCost = (hourlyRate * hoursWorked).toInt();  //Error: Method invocation is not a constant expression. => error is given because of toInt() is a runtime method
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print(totalCost);
*/

/*
  // Ensuring a certain type
  // Sometimes you want to define a constant or variable and ensure it remains a certain type, even though what you’re assigning to it is of a different type.
  final actuallyDouble = 3.toDouble();
  print(actuallyDouble);

  const double actuallyDouble2 = 3;
  print(actuallyDouble2);
*/

/*
  // Casting down
  num someNumber = 3;
  // print(someNumber.isEven); //Error: The getter 'isEven' isn't defined for the class 'num',can be used for int type, because num can be int or double at runtime.

  double n1 = 1.8;
  // print(n1.isEven);  //Error: The getter 'isEven' isn't defined for the class 'double'.

  // but can be worked by casting to integer using 'as'
  final someInt = someNumber as int;
  print(someInt.isEven)
*/

/*
  // mini-exercise
  // 1)
  const age1 = 42;
  const age2 = 21;
  // both above variable are type of int

  // 2) division operator get resultant runtime type as double
  const averageAge = age1 + age2 / 2; 
  print(averageAge.runtimeType);
*/

  // Strings => immutable in dart
  /*
    // Dart doesn't have char type
    // can use either double quote or single quote
    // double quote is explicit with apostrophes/ use escape
    print("My cat's food.");
    print('My cat\'s food');
    var greeting = 'Hello, Dart!';
    greeting = 'Hello, Flutter!';
    print(greeting);
    const letter = 'a'; //not const but string
  */

  /*
    // concatenation => +,+=
    var message = 'Hello' + ' my name is ';
    const name = 'Ray';
    message += name;
    print(message);

    // for lots of concatenation => StringBuffer()
    // This creates a mutable location in memory where you can add to the string without having to create a new string for every change.
    // When you’re all done, you use toString to convert the string bufferto the String type.
    final msg = StringBuffer();
    msg.write('Hello');
    msg.write(' my name is ');
    msg.write('Ray');
    msg.toString();
    print(msg);
  */

  /*
    // Interpolation
    const name = 'Man';
    const introduction = 'Hello my name is $name';
    print(introduction);

    const oneThird = 1 / 3;
    const sentence = 'One third is $oneThird.';
    print(sentence);

    // for fixing the pricision => only work with final because toStringAsFixed() is calculated at runtime
    final sen = 'One third is ${oneThird.toStringAsFixed(3)}.';
    */

  /*
    // Multiline strings('''/""")
    const bigString = '''
        You can have a string 
        that contains multiple 
        lines
        by 
        doing this.''';

    // output : single line, because dart ignores whitespace
    const oneLine = 'This is only '
        'a single '
        'line '
        'at runtime.';
    print(bigString);
    print(oneLine);

    // to ignore any special character
    const rawString = r'My name \n is $name';
    print(rawString);

    // Mini-exercises
    // 1)
    String firstName = 'Jalpa';
    String lastName = 'Patel';

    // 2)
    String fullName = firstName + ' ' + lastName;
    print(fullName);

    // 3)
    String myDetails = 'Hello, my name is $firstName $lastName';
    print(myDetails);
  */

  /*
    // Object and Dynamic types
    // JavaScript is a language.Dynamic means that something can change, and for JavaScript that means the types can change atruntime.

    var Var = 42;
    // Var = "hello"; //compile-time error

    var answer = Var * 3;
    print(answer);

    var myVariable; // defaults to dynamic
    myVariable = 42; // OK
    myVariable = 'hello';


    // At runtime, Object? and dynamic behave nearly the same.
    dynamic myVar = 42;
    myVar = 'hello';


    Object? var2 = 42;
    var2 = 'hello';
    */

/*
  // Challenges

  // ch:1
  const attan = 90;
  const hw = 80;
  const exam = 94;
  final percentage = ((attan * 0.2) + (hw * 0.3) + (exam * 0.5)).toInt();
  print(percentage); //89

  // ch:2
  // const name = 'Ray';
  // name += 'Wenderlich'; //we can't modify value of const variable at runtime

  // ch:3
  const value = 10 / 2; //double
  print(value.runtimeType);

  // ch:6
  const number = 10;
  const multiplier = 5;
  final summary = '$number* $multiplier = ${number * multiplier}';
  print(summary);  //10* 5 = 50
*/
}
