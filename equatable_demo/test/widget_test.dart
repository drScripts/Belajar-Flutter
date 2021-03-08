import 'package:flutter_test/flutter_test.dart';
import 'package:equatable_demo/main.dart';
import 'package:equatable_demo/person.dart';

void main() {
  Person p = Person(name: "dodi", age: 9);
  if (p == Person(name: "dodi", age: 9)) {
    print("Sama");
  } else {
    print("Tidak Sama");
  }

  List<Person> persons = [p];
  if (persons.contains(Person(name: "dodi", age: 9))) {
    print("adaa");
  } else {
    print("Ga ada");
  }
}
