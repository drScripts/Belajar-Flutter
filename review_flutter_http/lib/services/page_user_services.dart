import 'dart:convert';

import 'package:http/http.dart' as http;

class PageUserServices {
  String id, firstName, email, avatar, lastName;
  PageUserServices(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  static Future<List<PageUserServices>> connectApi(String page) async {
    var url = "https://reqres.in/api/users?page=$page";
    var result = await http.get(Uri.parse(url));
    var json = jsonDecode(result.body);
    List<dynamic> listUser = json['data'];
    List<PageUserServices> users = [];
    print(result.statusCode);
    for (var user in listUser) {
      users.add(PageUserServices.fromJson(user));
    }
    return users;
  }

  factory PageUserServices.fromJson(Map<String, dynamic> json) {
    return PageUserServices(
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
      email: json['email'],
      id: json['id'].toString(),
    );
  }
}
