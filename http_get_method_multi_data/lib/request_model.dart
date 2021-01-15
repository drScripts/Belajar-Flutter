import 'dart:convert';

import 'package:http/http.dart' as http;

class Person {
  String id, name, image, email;

  Person({this.id, this.name, this.image, this.email});

  factory Person.createUser(Map<String, dynamic> obj) {
    return Person(
      name: obj['first_name'] + " " + obj['last_name'],
      id: obj['id'].toString(),
      image: obj['avatar'],
      email: obj['email'],
    );
  }

  static Future<List<Person>> connectApi({String page = '1'}) async {
    String url = "https://reqres.in/api/users?page=" + page;

    var obj = await http.get(url);

    var jsons = json.decode(obj.body);

    List<dynamic> listUser = (jsons as Map<String, dynamic>)['data'];

    List<Person> user = [];

    for (int i = 0; i < listUser.length; i++) {
      user.add(Person.createUser(listUser[i]));
    }
    return user;
  }
}
