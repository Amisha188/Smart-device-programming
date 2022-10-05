import 'package:lab5_tutorial1/lab5_tutorial1.dart' as lab5_tutorial1;

void main(List<String> arguments) {
  // print('Hello world: ${lab5_tutorial1.calculate()}!');

  /*
 // previous labs
 // final var a = 10;
 // num is superclass of both int and double
 final num a=10;
 final int b=10;
 // final a=10;
 print(a);
 */

/*
 // Collections => organize data for different purpose
 // 1)List => it is a data type /class name
 // for collection of objects of single type which has ordering associated with them
 // like an array
 // '<>' => generic(any) types in dart
 
*/

  // Basic list operations

/*
 // Creating a list => using '[]'
 var desserts =['cookies', 'cupcakes', 'donuts', 'pie'];
 // num desserts2 =[1,2]; //Error: A value of type 'List<int>' can't be assigned to a variable of type 'num'.- 'List' is from 'dart:core'.
 desserts = [];  //empty => even though remember the data type
 
 
 // var snakes = [];  // type of dynamic => lose type safety
 // use this for work with empty list
 List<String> snakes = [];
 
 // another syntex => using final/var
 var snacks2 = <String>[];
*/

/*
 // Printing lists
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
 print(desserts);
 */

/*
 // Accessing elements
 var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
 final secondElement = desserts[1];
 print(secondElement);
 
 //for accessing index => indexOf()
 final index = desserts.indexOf('pie');
 print(desserts[index]);
*/

/*
 // Assigning values to list elements
 var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
 desserts[1] = 'cake';
 print(desserts);
 
 // adding element to a list
 desserts.add('brownies');
 print(desserts);
 
 // Removing elements
 var arr = [52,96,17,35];
 arr.sort();
 print(arr);
 
 arr.remove(35);
 print(arr);
 */

/*
  // Mutable and immutable list
  var arr = <int>[]; //mutable => using num,var
  //arr[1] = 12;
  arr.add(13);
  print(arr);

  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pie'
  ]; //immutable => final

  // desserts = []; // not allowed
  // desserts = ['cake', 'ice cream']; // not allowed
  // desserts = someOtherList; // not allowed

  // but below is allowed
  desserts.remove('cookies'); // OK
  desserts.remove('cupcakes'); // OK
  desserts.add('ice cream');

  // Creating deeply immutable list => using const keyword
  //   That is, every element of the list must also be a compile-time
  // constant.
  const desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts2.add('brownie'); // not allowed
  // desserts2.remove('pie'); // not allowed
  // desserts2[0] = 'fudge'; // not allowed
  */

/*
  // if you want an immutable list but you won't know the element values until runtime,
  // then you can create one with the List.unmodifiable named constructor:
  final modifiableList = [
    DateTime.now(),
    DateTime.now()
  ]; //DateTime.now()returns the date and time when it’s called.
  final unmodifiableList = List.unmodifiable(modifiableList);


  // spread operator(...)
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts = ['donuts', ...pastries, ...candy];
  print(desserts);
  */

/*
  // Collection if
  const peanutAllergy = true;
  const candy = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  print(candy);

  // Collection for
  const deserts = ['gobi', 'sahara', 'arctic'];
  var bigDeserts = [
    'ARABIAN',
    for (var desert in deserts) desert.toUpperCase(),
  ];
  print(bigDeserts);
  */

/*
  // Mini-exercise
  // 1)
  var months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);

  // 2)
  final immutableMonths = [...months];
  print(immutableMonths);

  // 3)
  final newMonths = [for (var month in months) month.toUpperCase()];
  print(newMonths);
  */

  // Sets => not allowed duplication

/*
  // Creating a set
  final Set<int> someSet = {};
  final someSet2 = <int>{};

  final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet);  //{1, 3, 2, 7, 5, 6}
  */

  // Operations on a set

/*
  // on single element
  // Checking the contents
  final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(99)); // false

  // Adding single elements
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet); //{42, 2112}

  //Removing elements
  someSet.remove(2112);
  print(someSet); //{42}
  */

/*
  // on multiple elements
  // Adding multiple elements
  final someSet = <int>{};
  someSet.addAll([1, 2, 3, 4]);
  print(someSet);

  // Intersections
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  print(intersection);

  // Unions
  final union = setA.union(setB);
  print(union);
  */

/*
  // Map => key->value pair, keys of map should be unique
  final Map<String, int> emptyMap = {};
  final emptySomething = {}; //Map<dynamic, dynamic>

  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(inventory);
  print(digitToWord);
  */

/*
  // Mini-exercise
  // 1)
  final Map<String, String> info = {
    'name': 'Amisha',
    'profession': 'student',
    'country': 'India',
    'city': 'Nadiad'
  };
  print(info);

  // 2)
  info['city'] = 'Toronto';
  info['country'] = 'Canada';
  print(info);

  // 3)
  for (var entry in info.entries) {
    print('${entry.key} => ${entry.value}');
  }
  */

/*
  // Higher order methods

  // Mapping over a collection
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  print(squares);
  print(squares.toList());

  // Filtering a collection
  final evens = squares.where((square) => square.isEven);
  print(evens);

  // using reduce => error if empty list :Bad state: No element
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  print(total);

  // Using fold => handle with empty list
  const amounts2 = <num>[];
  final total2 = amounts2.fold(
    0,
    (num sum, element) => sum + element,
  );
  print(total2);

  // Combining higher order methods
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
  .where((dessert) => dessert.length > 5)
  .map((dessert) => dessert.toUpperCase());
  */

/*
  // Mini-exercise
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];

  // 1)
  scores.sort();
  print('lowest: ${scores.first} , highest: ${scores.last}');

  // 2)
  final BGrades = scores.where((element) => element >= 80 && element <= 90);
  print(BGrades);

  // lowest: 32 , highest: 93
  // (82, 88, 89)
  */

  // Challenges
  // ch:1) : A unique request
  String para = "Hello World,Hello everyone";
  final words = uniqueRequest(para);
  print(words);

  // ch:2) Counting on you
  String para2 = 'HelloWorld';
  print(countCharacter(para2));

  // ch:3) Mapping users
  User user1 = User(1, 'Bob');
  User user2 = User(2, 'Ray');
  User user3 = User(3, 'Keta');
  List<User> users = [user1, user2, user3];

  print(listToMap(users));
}

Set<String> uniqueRequest(String para) {
  Set<String> uchars = {};
  for (int i = 0; i < para.length; i++) uchars.add(para[i]);

  return uchars;
}

Map<String, int> countCharacter(String para) {
  Map<String, int> chars = {};
  for (int i = 0; i < para.length; i++) {
    int count = chars[para[i]] ?? 0;
    chars[para[i]] = count + 1;
  }

  return chars;
}

class User {
  User(this.id, this.name);
  int id;
  String name;
}

Map<int, String> listToMap(var users) {
  var usersMap = <int, String>{};
  for (var user in users) {
    usersMap[user.id] = user.name;
  }
  return usersMap;
}
