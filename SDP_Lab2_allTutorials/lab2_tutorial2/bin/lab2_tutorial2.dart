import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import "dart:math";

void main(List<String> arguments) {
  //commenting code

  //This is a single line comment

  /*
      This is also a comment
      useful for multiline comment
    */

  /* Nest comment.
    /* comment inside another comment */
    */

  ///single line documentation comment
  ///comment done automatically in next line
  /** 
     * block documentation comment */

  ///printing the output
  /**  
   * double quote is preferable over single quote, 
   * because it will not allowing apostrophe
  */
  /// print("Hello, Dart Apprentice reader!");

/*
  /// Statements
  
    /// simple statement => end with semi colon
      print("Hello, Dart Apprentice reader!");
    
    /// complex statement
    /// if(){}
*/

/*
  /// Expressions
    3+2;
    "Hello, Dart apprentice reader!";
*/

  ///Arithmetic operations
  /**
   * 2 + 6;
   * 10 - 2;
   * 2 * 4;
   * 24 / 3;
   */

/*
  ///Decimal numbers
  /// result is in double 
    print(22 / 7);
  /// truncating division operator => "~/"
  /// for result is in integer 
    print(22 ~/ 7);
*/

/*
  /// The Euclidean modulo operation
    print(28 % 10);
*/

/*
  /// Order of operations
   print(((8000/(5*10))-32)~/(29%5));
    print(350 / 5 + 2);
*/

/* 
  /// Math functions
  print(sin(45 * pi / 180));

  print(cos(135 * pi / 180));

  print(sqrt(2));
  print(max(5,10));
  print(min(-5,-10));

  print(max(sqrt(2), pi/2));

*/

/*
  // mini-exercise
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));
*/

/*
  Identifiers: 
  -character,digit,_,$
  -case-sensitive
  -must be unique.
  -can't contain space
*/

/*
  // variables => but they are nothing but object in dart
  // dart doesn't havve any primitive type
  // int,double => type of subclasses if num
  int num = 10;
  num = 15;
  // num = 3.5; //not allowed
  double f = 3.25;

  print(num.isEven);
  print(f.round());

*/

  /*
  //num type: we can assingn any type of numeric value and perform swap between them.
  num a=10;
  a=12.5;
  a=3;
  // JIT
  // a='x';
  print(a);

  num b;
  b=8;
  b=8.8;
  // b='y';

  print(b);

  a=b;
  print(a);

  */

/*
// var=> with initialization type gets binded statically
    // => without initialization type as dynamic
  var a = 7;
  // a = 12.5;
  // a='x';

  print(a);

  var b;
  b=12.5;
  b=10;
  b='x';

  print(b);

  var c;
  c=10.5;
  // c=b;
  print(c);

  a=c+3;
  print(a);

*/

/*
// swapping can be done between any value.
  dynamic a= 7;
  a = 12.5;
  a='x';

  print(a);

  dynamic b;
  b=12.5;
  b=10;
  b='x';

  print(b);

  dynamic c;
  c=10.5;
  // c=b;
  print(c);

  a=c+3;
  print(a);

  dynamic x=8;
  dynamic y = 'Hello';

  dynamic z;
  z = x+y;

  print(z);
  */

/*
  // Mutable data => variables whose value can change

  // const keyword =>  compile time variable,can't create variable without declaration
  const myConst = 10;
  // myConst = 12; //Constant variables can't be assigned a value.

  // final constant => runtime variable == don't know at compile time which valuwe are going to assign
  final myFinal; // can be declared without initialization
  // myFinal = 10; value can be set only once
  // myFinal = 15; //can't change value

  */

/*
  // mini exercise
  // 1)
  const age = 19;
  // 2)
  double averageAge = 19;
  averageAge = (19 + 20) / 2;
  // averageAge = (19 + 20) ~/ 2; //A value of type 'int' can't be assigned to a variable of type 'double'.
  print(averageAge);

  // 3)
  // for even(tn) => eo(0), for odd(tn) => eo(1)
  const testNumber = 94;
  const evenOdd = testNumber % 2;
  print(evenOdd);
  */

/*
  // increment and decrement
  var counter = 0;
  counter += 1;
  // counter = 1;
  counter -= 1;
  // counter = 0;

  counter = 0;
  counter = counter + 1; //1
  counter = counter - 1; //0

  counter = 0;
  counter++; // 1
  counter--; // 0

  double myValue = 10;
  myValue *= 3; // same as myValue = myValue * 3;
  // myValue = 30.0;
  myValue /= 2; // same as myValue = myValue / 2;
  // myValue = 15.0;
*/

// ch1: variables
  const myAge = 19;
  print(myAge);
  int dogs = 5;
  dogs++;
  print(dogs);

  // ch:2 Make it compile
  var age = 16; //error with final/const =>because reassign value
  print(age);
  age = 30;
  print(age);

  // ch:3 Compute the answer
  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y;
  print(answer1);
  const answer2 = (x * 100) + (y * 100);
  print(answer2);
  const answer3 =
      (x * 100) + (y / 10); //becausse of division answer is in double.
  print(answer3);

  // ch:4 Average rating
  const rating1 = 10.56;
  const rating2 = 12.14;
  const rating3 = 15.89;

  const averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  // ch:5 quadratic equations
  double a = 1, b = 2, c = 1;
  double d = b * b - (4 * a * c);
  num root1 = -b + sqrt(d) / (2 * a);
  num root2 = -b - sqrt(d) / (2 * a);
  print(root1);
  print(root2);
}
