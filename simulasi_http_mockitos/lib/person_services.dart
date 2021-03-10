import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:simulasi_http_mockitos/person.dart';

class PersonServices {
  static Future<Person> getPersonById(String id, http.Client client) async {
    var url = "../person/" + id;
    var respons = await client.get(Uri.parse(url));
    if (respons.statusCode != 200) {
      throw Exception("Erorr");
    } else {
      var results = json.decode(respons.body);
      return Person.fromJson(results);
    }
  }
}
