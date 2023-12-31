import 'dart:math';

class Person {
  late String name;
  late int _age;
  late List<int> luckyNumbers;

  int get age => _age;
  set age(int value) {
    if (value < 1) {
      value *= -1;
    }
    _age = value;
  }

  Person() {
    name = "no name";
    age = 0;
    Random r = Random();
    luckyNumbers = [];
    for (int i = 0; i < 3; i++) {
      luckyNumbers.add(r.nextInt(11));
    }
  }
}
