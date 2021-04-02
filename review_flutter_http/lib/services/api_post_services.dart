import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiPostServices {
  String name, job, id, createdAt;
  ApiPostServices({this.name, this.job, this.id, this.createdAt});

  factory ApiPostServices.createPostResult(Map<String, dynamic> json) {
    return ApiPostServices(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      createdAt: json['createdAt'],
    );
  }

  static Future<ApiPostServices> connectApi(String name, String job) async {
    Uri apiUrl = Uri.https('reqres.in', '/api/users');
    var apiResult = await http.post(apiUrl, body: {
      "name": name,
      "job": job,
    });

    print(apiResult.statusCode);

    var json = jsonDecode(apiResult.body);
    return ApiPostServices.createPostResult(json);
  }
}
