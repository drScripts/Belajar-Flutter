import 'dart:convert';

import 'package:http/http.dart' as http;

class DataModels {
  final String body;
  final String title;
  final int id;
  DataModels({this.body, this.title, this.id});

  factory DataModels.fromJson(Map<String, dynamic> json) {
    return DataModels(
      body: json['body'],
      title: json['title'],
      id: json['id'],
    );
  }

  Future<List<DataModels>> getData(int start, int limit) async {
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts?_start=$start&_limit=$limit');
    var response = await http.get(url);

    if (response.statusCode != 200) {
      print('Erorr ${response.statusCode}');
    }

    var data = jsonDecode(response.body) as List;
    return data.map((e) => DataModels(id: e['id'], body: e['body'], title: e['title'])).toList();
  }
}
