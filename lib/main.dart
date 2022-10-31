import 'dart:math';

import 'package:dart_basics/homework_1/binary_system.dart';
import 'package:dart_basics/homework_1/euclid_algorithm.dart';
import 'package:dart_basics/homework_1/finding_the_root_of_the_degree.dart';
import 'package:dart_basics/homework_1/map_word_count.dart';
import 'package:dart_basics/homework_1/point.dart';
import 'package:dart_basics/homework_1/text_parser_to_num.dart';
import 'package:dart_basics/homework_1/user.dart';
import 'package:dart_basics/homework_1/word_number_to_int.dart';

void main() {
  print("Задание 1");
  print(Euclid.hod(15, 20));
  print(Euclid.hod(15, 20));

  print("Задание 2");
  print(BinarySystem.integerToBinary(12));
  print(BinarySystem.binaryToInteger(110010));

  print("Задание 3");
  print(TextParserToNum.parserText("Жили были 2 друга им было по 12.5 лет"));

  print("Задание 4");
  var text = "с новым годом и счастливого рождества и новым чудом";
  print(MapWordCount.getMapWordCount(text.split(" ")));

  print("Задание 5");
  String words = "one, two, three, cat, dog, four, one, five, six, three, seven, home, eight, nine";
  print(WordNumberToInt.wordNumberToInt(words));

  print("Задание 6");
  var point2 = Point(5, 6, 7);
  var point = Point.begin();
  print(point.distanceTo(point2));

  print("Задание 7");
  print(FindingTheRootOfTheDegree.AlgorithmFindRootTheDegree(8, 3));

  print("Задание 8");
  var adminUser = AdminUser("evilgod@mail.ru");
  var adminUser2 = User("evil@mail.ru");
  var adminUser3 = User("god@mail.ru");
  var userManager = UserManager()
    ..addNewUser(adminUser)
    ..addNewUser(adminUser2)
    ..addNewUser(adminUser3);
  print(userManager.getEmailAllUser());
}
