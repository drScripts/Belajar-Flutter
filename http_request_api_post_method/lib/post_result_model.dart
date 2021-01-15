import 'dart:convert';

import 'package:http/http.dart' as http;

class Result {
  String name, id, job, created;
  Result({this.name, this.id, this.job, this.created});

  //factory method untuk post API
  factory Result.createResult(Map<String, dynamic> obj) {
    return Result(
      id: obj['id'],
      name: obj['name'],
      job: obj['job'],
      created: obj['createdAt'],
    );
  }

  // request API method
  static Future<Result> connectApi(String name, String job) async {
    String url = "https://reqres.in/api/users";
    var results = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    var jsonObject = json.decode(results.body);
    return Result.createResult(jsonObject);
  }
}
