import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiGetServices {
  final String id, email, firstName, lastName, avatar;
  ApiGetServices(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  Future<ApiGetServices> connectToApi(String id) async {
    Uri url = Uri.https('reqres.in', '/api/users/$id');
    http.Response respons = await http.get(url);
    print('status code : ' + respons.statusCode.toString());

    var json = jsonDecode(respons.body)['data'];
    return ApiGetServices.fromJson(json);
  }

  factory ApiGetServices.fromJson(Map<String, dynamic> json) {
    return ApiGetServices(
      id: json['id'].toString(),
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
