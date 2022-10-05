import 'package:lab3_tutorial3/lab3_tutorial3.dart' as lab3_tutorial3;
import 'package:characters/characters.dart';

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial3.calculate()}!');

  // Getting characters

  /*
  // Dart strings are a collection of UTF-16 code units.
  // (ASCII value)UTF-16 is a way to encode Unicode values by using 16-bit numbers. If you want to find out what those UTF-16 codes are, you can do it like so:

  var salutation = 'Hello!';
  print(salutation.codeUnits);

  // However, 16 bits only give you 65,536 combinations, and believe it or not, there are more than 65,536 characters in the world!
  // so,You’ll need more than 16 bits to represent those values.
  // Surrogate pairs => UTF-16 has a special way of encoding code points higher than 65,536 by using two code units called as Surrogate pairs.
  const dart = '🎯';
  print(dart.codeUnits);

  // runes => It would give Unicode code points directly,much nicer to just get it.
  print(dart.runes);
  */

/*
  // Unicode grapheme clusters
  // Regional Indicator symbols => It is pair of code points to represents flag.
  // 127474 is the code for the regional indicator symbol letter M, and 127475 is the code for the regional indicator symbol letter N. MN represents Mongolia.
  const flag = ' ';
  print(flag.runes);

  const family = '.';
  print(family.runes);

  // That list of Unicode code points is a man, a woman, a girl and a boy all glued together with a characters called a Zero width Joiner ZWJ
  // const family2 = '-';
  print(family.length);
  print(family.codeUnits.length);
  print(family.runes.length);
  */

  // Adding the characters package => The characters package extended String to include a collection of grapheme clusters called characters.
  // dart pub get

  const family = '.';
  print(family.characters.length); // 1
}
