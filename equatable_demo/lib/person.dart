import 'package:equatable/equatable.dart';

class BasePerson {}

class Person extends BasePerson with EquatableMixin {
  String name;
  int age;

  Person({this.name = "no name", this.age = 0});

  // @override
  // operator ==(other) {
  //   if (other is Person) {
  //     if (name == other.name && age == other.age) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  @override
  List<Object> get props => [name, age];
}
