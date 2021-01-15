import 'dart:convert';
import 'package:http/http.dart' as http;

class Person {
  String id, name;

  Person({this.id, this.name});

  factory Person.createUser(Map<String, dynamic> obj) {
    return Person(
      id: obj['id'].toString(),
      name: obj['first_name'] + " " + obj['last_name'],
    );
  }

  static Future<Person> connectApi(String id) async {
    String url = "https://reqres.in/api/users/" + id;
    var hasil = await http.get(url);
    var jsons = json.decode(hasil.body);
    var data = (jsons as Map<String, dynamic>)['data'];
    return Person.createUser(data);
  }
}
