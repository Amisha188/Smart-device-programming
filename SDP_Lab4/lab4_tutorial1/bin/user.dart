class User {
  // custom constructor
  // // Long-form constructor
  // User(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }

  // short form constructor
  // User(this.id, this.name);

  // Named constructors
  // User.anonymous() {
  //   id = 0;
  //   name = "anonymous";
  // }

  // short form constructor
  // User.anonymous()
  //     : id = 0,
  //       name = "anonymous";

  // Forwarding constructor
  // User.anonymous() : this(0, "anonymous");

  // all constructor values are initializing by this constructor
  // unnamed constructor
  // User({this.id = 0, this.name = "anonyymous"});

  // // const constructor can't have a body
  // const User({int id = 0, String name = "anonyymous"})
  //     : assert(id >= 0),
  //       // assert(name.isNotEmpty),
  //       _id = id,
  //       _name = name;
  // //  {
  // //   print('User name is $_name');
  // //   }

  // const User({this.id = 0, this.name = "anonyymous"}) : assert(id >= 0);

  // named constructor
  const User.anonymous() : this();

// // factory constructor
//   factory User.ray() {
//     return User(id: 42, name: 'Ray');
//   }

  // factory User.fromJson(Map<String, Object> json) {
  //   final userId = json['id'] as int;
  //   final userName = json['name'] as String;

  //   return User(id: userId, name: userName);
  // }

  // User.fromJson(Map<String, Object> json)
  //     : _id = json['id'] as int,
  //       _name = json['name'] as String;

  // int id = 0;
  // String name = '';
  // SC :Put your cursor on the variable name and press F2.
  // declaring  private vaariables with '_'
  // int _id;
  // String _name;

  // final int _id;
  // final String _name;

  // refactoring user
  final int id;
  final String name;

  // int get id => _id;
  // String get name => _name;
  // bool get isBigId => _id > 1000;

  // // Json method
  // String toJson() {
  //   return '{"id": $_id, "name": "$_name"}';
  // }

  // annotaion => optional(added to help compiler to giving more information)
  @override
  String toString() {
    // return "User(id: $_id, name: $_name)";
    return "User(id: $id, name: $name)";
  }

  static const myConstant = '42';
  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';

  const User({this.id = _anonymousId, this.name = _anonymousName})
      : assert(id >= 0);

  static User fromJson(Map<String, Object> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;

    return User(id: userId, name: userName);
  }
}

void main() {}
