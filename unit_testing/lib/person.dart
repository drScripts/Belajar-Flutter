import 'dart:math';

class Person {
  String name;
  int _age;
  List<int> luckyNumbers;

  int get age => _age;
  set age(int newAge) {
    if (newAge < 0) {
      newAge *= -1;
    }
    _age = newAge;
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
