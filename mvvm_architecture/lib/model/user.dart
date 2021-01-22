import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id, name, email, avatar;
  User({this.id, this.name, this.avatar, this.email});

  factory User.createUser(Map<String, dynamic> obj) {
    return User(
      id: obj['id'].toString(),
      name: obj['first_name'] + ' ' + obj['last_name'],
      avatar: obj['avatar'],
      email: obj['email'],
    );
  }

  static Future<User> connectApi(int id) async {
    String url = 'https://reqres.in/api/users/' + id.toString();
    var hasil = await http.get(url);
    var jsonobj = json.decode(hasil.body);
    var jsons = (jsonobj as Map<String, dynamic>)['data'];
    return User.createUser(jsons);
  }
}

class UninitializeUser extends User {}
