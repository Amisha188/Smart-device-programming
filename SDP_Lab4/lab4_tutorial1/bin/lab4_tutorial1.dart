import 'package:lab4_tutorial1/lab4_tutorial1.dart' as lab4_tutorial1;
import 'user.dart';

void main(List<String> arguments) {
  // print('Hello world: ${lab4_tutorial1.calculate()}!');

  // dart classes
  // classes => core component of object-oriented programming
  // data
  // constructor => special method to Initializing object while creating
  // methods => functions inside classes
  // In dart -> classes are derived from object
  // object => has toString method -> displaying generic output

  // hence for displaying object of user defind class => override toString method

/*
  // defining classes => should be outside main, but it's order doesn't matter you put it before use or after
  // creating object from classes => can also use new keyword, but in latest version we can omit new keyword
  final user = User();

  // Assigning vales to properties
  user.name = "Ray";
  user.id = 42;

  // printing object
  print(user);

  */

  // Adding methods

/*
  // Understading object serialization
  // serialization => process of converting a complex data object into a string.
  // deserialization => to read data back(converting a string back into an object of your data type)

  // numbers of serialization format => one of most common is JSON

  // Adding a JSON serialization method
  User user = User();
  user.name = "Ray";
  user.id = 42;
  print(user.toJson());
*/

/*
  // Cascade notation(..) => assign value without object name, but don't put semicolon until u complete to use cascade notation on object
  final user = User()
    ..name = "Ray"
    ..id = 42;
  print(user);

  // another way of writing cascade function on specific object
  user..name = "Mohit";
  print(user);
*/

/*
  // Mini-exercise
  // 1)
  Password pass = Password();
  pass.value = "123456789";
  // 2)
  print(pass);
  // 3)
  print(pass.isValid());
*/
/*
  // Constructors => dart convention is put the constructor before the property variable
  /*

  // ***********Generative constructors*************
  // A generative constructor can only create a new instance of the class itself.
  // default constructor
  // custom constructor(lon-form and short-form)
  final user = User(42, "ray");
  print(user);

  // named constructor
  /*
  xOrigin = 0;
  yOrigin = 0;
  class Point{
    int x;
    int y;

    Point.origin():x= xOrigin,y= yOrigin;
  }
  */
  final anonymousUser = User.anonymous();
  print(anonymousUser);

  // forwarding constructor
  final anonymousUser2 = User.anonymous();
  print(anonymousUser);
  */
  

  // Named parameters => useful to know that which is going to assign to which variable of passed paramenters
  // making parameter optional => MyClass([this.myProperty]);

  // optinal and named => Myclass({this.myProperty});
  // required using curly braces and required keyword => Myclass({required this.myProperty});

  User user = User();
  print(user);

  User u2 = User.anonymous();
  print(user);

  // Initializer list
  // In following example => anyone can change the property at eny time => problem
  final vicki = User(id: 24, name: 'Vicki');
  // vicki._name = 'Nefarious Hacker';
  print(vicki);

  // Private variables: making library(not class) private =>using '_'
  // example given usinng user and starter file

  // Checking for errors => using asserts
  // asserts like sanity checks that make sure you aren’t doing anything silly, by checking that a condition is in fact true.

  // final jb = User(id: -1, name: 'JB Lorenzo');
  final jb = User(id: 100, name: 'JB Lorenzo');

  // constant constructors
  // protect variables from modifying => 1)making private
  //                                   2)making immutable

  // Making properties immutable => using final keyword

  // Making class immutable => means the object of particular class can never change
  // all fields of class are final

  const user2 = User(id: 42, name: "Ray");
  const anonymousUser = User.anonymous();
  print(user2);
  print(anonymousUser);

  // benefits of using const => they are canonical instances : which means that no matter how many instances you create, as long as the properties used to create them are the same, Dart will only see a single instance.

  // Factory constructors => provides more flexibility in how you create your objects.
  // factory constructors can return existing instances of the class, or even subclasses of it.

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);

  print(manda);
*/

/*
  // mini-exercise
  // 1),2)
  Password p1 = Password();
  print(p1);
  */

/*
  // Dart objects
  // shadow copy will be created if we assigning another object ton object means 2 names of same object.

  final myObject = MyClass();
  final anotherObject = myObject;

  print(myObject.myProperty);
  anotherObject.myProperty = 2;

  print(myObject.myProperty);
*/

/*
  // Getters
  const ray = User(id: 42, name: 'Ray');
  print(ray.id);
  print(ray.name);

  // calculated properties
  print(ray.isBigId);
*/

/*
  // setters
  final email = Email();
  email.value = 'ray@example.com';
  final emailString = email.value;
  print(emailString);
*/

  // Refactoring
  // when we are setting variable by predefined variable then we don't need getter and setter

/*
  // refactoring the email address
  final email = Email();
  email.value = 'ray@example.com';
  final emailString = email.value;
  print(emailString);
  */

  /*
  // for only getting getter method but not setter make property to final
  final email = Email('ray@example.com');
  final emailString = email.value;
  print(emailString);
  */

/*
  // Refactoring user
  // taking final properties

  // Static members => Initialization must at declaration
  final value = SomeClass.myProperty;
  SomeClass.myMethod();
*/

/*
  // Static variables => Static variables are often used for constants and in the singleton pattern.

  // Non-static variables => called as instance variable.

  // Constants
  print(User());

  // Singleton pattern
  // Static fields and top-level variables, that is, global variables outside of a class, are lazily initialized. That means Dart doesn’t actually calculate and assign their values until you use them the first time.
  // final mySingleton = MySingleton.instance;
  final mySingleton = MySingleton();
  print(mySingleton);
*/

/*
  // Static methods
  // uses
  // 1) utility methods =>One use for a static method is to create a utility or helper method that’s associated with the class, but not associated with any particular instance.

  // 2)Creating new object
  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
  */

  // Challenges
  // 1) Bert and Ernie
  Student bert = Student('bert', 'Luois', 95);
  Student ernie = Student('ernie', 'Luois', 85);
  print(bert);
  print(ernie);

  // 2) Spheres
  Sphere s = Sphere(12);
  print(s.volume);
  print(s.surface);
}

// 2)
class Sphere {
  const Sphere(this.radius);

  final int radius;
  static const pi = 3.14;
  static num power(int radius) {
    return radius * radius * radius;
  }

  num get volume => (4 / 3 * pi * power(radius));
  num get surface => (4 * pi * radius * radius);
}

// 1)
class Student {
  const Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  final int grade;

  @override
  String toString() {
    return 'Student(firstName: $firstName, lastname: $lastName, grade: $grade)';
  }
}

class MySingleton {
  // this is private named constructor => '_' makes it impossible to instantiate the class normally
  // can't be called from the outside
  MySingleton._();
  static final MySingleton _instance = MySingleton._();

  factory MySingleton() => _instance;
}

class SomeClass {
  static int myProperty = 0;

  static void myMethod() {
    print('Hello, Dart!');
  }
}

class Email {
  // var _address = '';
  // String get value => _address;
  // set value(String address) => _address = address;
  Email(this._value);

  final _value;
}

class MyClass {
  var myProperty = 1;
}

class Address {
  // Including default Address() constructor is optional
  Address();
  var value = '';
}

// 1)
class Password {
  // 2nd:2)
  // const Password({String pass = '12345678'}) : value = pass;
  const Password(this.value);

  // String value = '';
  // 2nd:1)
  final String value;

  // 3)
  bool isValid() {
    return (value.length > 8) ? true : false;
  }

  // 2)
  @override
  String toString() {
    return "Password(value: $value)";
  }
}
