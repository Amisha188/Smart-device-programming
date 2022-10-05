import 'dart:ffi';

import 'package:lab5_tutorial2/lab5_tutorial2.dart' as lab5_tutorial2;

enum Grades { A, B, C, D, F }

void main(List<String> arguments) {
  // print('Hello world: ${lab5_tutorial2.calculate()}!');

  // Advanced classes

  // Extending classes
  // parent class => superclass
  // child class => subclass

/*
  // Using the classes
  final jon = Person("Jon", "Snow");
  final jane = Student("Jane", "Snow");
  print(jon.fullName);
  print(jane.fullName);

  final historyGrade = Grades.B;
  jane.grades.add(historyGrade);
  print(jane.grades);
  */

  /*
  // Overriding parent methods
  final jane = Student("Jane", "Snow");
  print(jane.fullName);

  // Calling super from an overridden method
  final child = SomeChild();
  child.doSomeWork();
  */

/*
  // Multi-level hierarchy
  // Sibling classes
  final jane = Student("Jane", "Snow");
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');

  // Type inference in a mixed list
  // You can see that Dart has inferred the type of the list to be
  // List<Student>. Dart used the most specific common
  // ancestor as the type for the list.
  final students = [jane, jessie, marty];
  print(students);
  */

/*
  // Checking an object’s type at runtime
  final jessie = SchoolBandMember('Jessie', 'Jones');

  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);

  // Having an object be able to take multiple forms is known as polymorphism.
  //Prefer composition over inheritance
*/

/*
  // Mini-exercise
  // 1)
  var f1 = Fruit('red');
  f1.describeColor;

  // 2)
  var wm = WaterMelon('red');
  var cl = Cantaloupe('yellow');
  wm.describeColor;
  cl.describeColor;

  // 3)
  var wm2 = WaterMelon('red');
  wm2.describeColor;
  */

/*
  // Abstract classes
  // final animal = Animal();  //Abstract classes can't be instantiated.

  // Concrete subclass
  // Testing the results Test your code out now in main:
  // Run the code to see the following:

  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);

  // Treating concrete classes as abstract
  Animal platypus2 = Platypus();
  print(platypus2);
  */

/*
  // Interfaces
  // Implementing the interface
  // Using the interface
  // final repository = DataRepository();
  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature('Berlin');
  print(temperature);
*/

  // Adding a factory constructor
  // Extending vs implementing
  // Example of extending

  // Mini - exercises
  // 1)
  // 2)
  var sb = sodaBottel();
  sb.open();
  // 4)
  final bottel = Bottle();
  bottel.open();

/*
  // Mixies
  final platypus = Platypus();
  final robin = Robin();
  platypus.layEggs();
  robin.layEggs();
  */

  // mini-exercise
  // 1)
  var calc = Calculator();
  calc.sum(3, 2); //5

  // 2)
  // 3)
  var calc2 = Calculator();
  calc2.sum(33, 42); //5

  // Challenges
  // ch:1) Heavy monotremes

  var plt1 = Platypus(2.5);
  var plt2 = Platypus(1.5);
  var plt3 = Platypus(0.4);
  var plt4 = Platypus(3.5);
  var plt5 = Platypus(5.2);

  final platypus = [plt1, plt2, plt3, plt4, plt5];
  platypus.forEach((element) {
    print(element.weight);
  });
  print('\n');
  platypus.sort();
  platypus.forEach((element) {
    print(element.weight);
  });

  // ch:2) Fake notes
  final database = Database();
  database.saveNote('Have a nice day');
  database.saveNote('Hello world');
  database.saveNote('Hii');
  print(database.selectNote(1));
  print(database.selectNote(0));
  print(database.selectNote(2));

  // ch:3) time to code
  final timeRemaining = 3.minutes;
  print(timeRemaining);
}

// ch:3)
extension on int {
  Duration get minutes => Duration(minutes: this);
}

// ch:2)
abstract class Database {
  factory Database() => fakeDataBase();
  String selectNote(int id);
  void saveNote(String note);
}

class fakeDataBase implements Database {
  List<String> allNotes = [];

  @override
  void saveNote(String note) {
    // TODO: implement saveNote
    allNotes.add(note);
  }

  @override
  String selectNote(int id) {
    // TODO: implement selectNote
    return allNotes[id];
  }
}

// 3)-1)
// class Calculator {
//   void sum(int x, int y) => print(x + y);
// }

// 3)-2)
mixin Adder {
  void sum(int x, int y) => print(x + y);
}

// 3)-3)
class Calculator with Adder {}

// 2)-1)
abstract class Bottle {
  void open();
  // 2)-3)
  factory Bottle() => sodaBottel();
}

// 2)-2)
class sodaBottel implements Bottle {
  @override
  void open() {
    // TODO: implement open
    print("Fizz fizz");
  }
}

// 1)
class Fruit {
  Fruit(this.color);
  String color;

  void get describeColor => print(color);
}

//  2)
class Melon extends Fruit {
  Melon(var color) : super(color);
}

// 2,3)
class WaterMelon extends Melon {
  WaterMelon(var color) : super(color);

  @override
  void get describeColor => print('Water melon color : $color');
}

class Cantaloupe extends Melon {
  Cantaloupe(var color) : super(color);
}

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';
  @override
  String toString() => fullName;
}

// class Student {
//   Student(this.givenName, this.surname);
//   String givenName;
//   String surname;
//   var grades = <Grades>[];

//   String get fullName => '$givenName $surname';
//   @override
//   String toString() => fullName;
// }

// to remove code duplication
class Student extends Person {
  // we can't use this keyword because it's point to current object and givenName and surname are not field of Student.
  // super keyword is used to refer one level up the hierarchy.
  Student(String givenName, String surname) : super(givenName, surname);

  // calling super last in an initializer list
  // Student(var grades1)
  //     : assert(grades1 != null),
  //       grades = grades1,
  //       super();

  var grades = <Grades>[];

//   This has led many people to say, prefer composition over
// inheritance. The phrase means that, when appropriate,
// you should add behavior to a class rather than share
// behavior with an ancestor. It’s more of a focus on what an
// object has, rather than what an object is. For example, you
// could flatten the hierarchy for Student by giving the student
// a list of roles, like so:

  @override
  String get fullName => '$surname, $givenName';
}

class SomeParent {
  void doSomeWork() {
    print('parent working');
  }
}

class SomeChild extends SomeParent {
  // @override
  // void doSomeWork() {
  //   super.doSomeWork();
  //   print('child doing some other work');
  // }

  @override
  void doSomeWork() {
    print('child doing some other work');
    super.doSomeWork();
  }
}

// Multi-level hierarchy
class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

// Sibling classes
class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);

  bool get isEligible => grades.every((grade) => grade != Grades.F);
}

// Abstract classes
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

/*
// Concrete subclass
class Platypus extends Animal {
  @override
  void eat() {
    // TODO: implement eat
    print('Munch munch');
  }

  @override
  void move() {
    // TODO: implement move
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}
*/

abstract class DataRepository {
  // factory constructor can return
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String city);
}

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// class MySubclass extends OneClass, AnotherClass
// {}

// mixins
abstract class Bird {
  void fly();
  void layEggs();
}

// class Robin extends Bird {
//   @override
//   void fly() {
//     print('Swoosh swoosh');
//   }

//   @override
//   void layEggs() {
//     print('Plop plop');
//   }
// }

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}
mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Robin extends Bird with EggLayer, Flyer {}

class Platypus extends Animal with EggLayer implements Comparable {
  Platypus(this.weight);
  num weight;

  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    // throw UnimplementedError();

    if (weight > other.weight)
      return 1;
    else if (weight < other.weight) return -1;
    return 0;
  }
}
