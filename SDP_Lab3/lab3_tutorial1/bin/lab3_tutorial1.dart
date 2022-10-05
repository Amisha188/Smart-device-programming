import 'dart:developer';

import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;
// for support of random function
import "dart:math";
import 'dart:convert';

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial1.calculate()}!');

/*
  // Loops

  // while loops
  // Checks condition first then iteration occure
  var sum = 1;
  while(sum<10){
    sum += 4;
    print(sum);
  }

  // Do-while loops
  // at least one iteration always occure
  sum = 1;
  do{
    sum += 4;
    print(sum);
  }while(sum < 10);

  // Comparing while and do-while
  sum = 11;
  while(sum < 10){
    sum += 4;
  }
  sum = 11;
  do{
    sum += 4;
    print(sum);
  }while(sum < 10);

  // breaking out of a loop
  sum = 1;
  while(true){
    sum += 4;
    if(sum > 10){
      break;
    }
    print(sum);
  }

*/

/*
  // random interlude => Random() 
  // nextInt(maximum value) => generates a random integer between 0 and one less than the maximum value you give it.
  final random = Random();
  // needs to add 1,because it's range=>(0 to 5)+1 = (1 to 6) 
  while (random.nextInt(6) + 1 != 6) {
    print("Not a six!");
  }
*/

/*
  // for loops
  for (var i = 0; i < 5; i++) {
    print(i);
  }
*/

/*
  // The continue keyword
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }
  */

/*
  // For-in loops
  const myString = 'I ❤ Dart';
  // runes => is collection of integers
  // codePoint is inferred to be an int.
  // String.fromCharCode() => converting integer to string 
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }
  */

/*
  // for-each loops
  const myNumbers = [1, 2, 3];
  myNumbers.forEach((number) => print(number));
*/

/*
  // Mini-exercise
  // 1)
  var count = 0;
  while (count < 10) {
    print('count is $count');
    count++;
  }

  // 2)
  for (int i = 1; i <= 10; i++) print(i * i);

  // 3)
  const number = [1, 2, 4, 7];
  for (var num in number) {
    print(sqrt(num));
  }

  // 4)
  number.forEach((num) => print(sqrt(num)));
  */

  // Challenges

  // ch:1 Find the error
  // lastname is local variable for each block, so we can't use it outside the loop
  const firstName = 'Bob';
  if (firstName == 'Bob') {
    const lastName = 'Smith';
  } else if (firstName == 'Ray') {
    const lastName = 'Wenderlich';
  }

  // ch:2 Boolean challenge
  print((true && 1 != 2) || (4 > 3 && 100 < 1)); //true
  print(((10 / 2) > 3) && ((10 % 2) == 0)); //true

  // ch:3 Next power of two
  const number = 6;
  int i = 0;
  var power = pow(2, i);
  while (power < number) {
    power = pow(2, i);
    i++;
  }
  print(power);

  // ch:4) Fibonacci
  var n = 10;
  var pre = 0;
  var fibNum = 1;
  while (n > 0) {
    print(fibNum);
    var temp = fibNum;
    fibNum = fibNum + pre;
    pre = temp;
    n--;
  }

  // ch:5)How many times? => 6times
  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
  }

  // ch:6)
  var count = 10;
  while (count >= 0) {
    print(count);
    count--;
  }

  // ch:7)Print a sequence
  var seq = 0.0;
  while (seq <= 1.0) {
    print(seq.toStringAsFixed(1));
    seq += 0.1;
  }
}
