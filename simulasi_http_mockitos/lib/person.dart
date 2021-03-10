import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final String name;
  final int age;
  final int id;

  Person({this.name, this.age, this.id});

  @override
  List<Object> get props => [id, name, age];

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(id: json['id'], name: json['name'], age: json['age']);
  }
}
