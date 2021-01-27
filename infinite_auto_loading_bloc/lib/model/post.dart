import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  String id, title, body;
  Post({this.id, this.title, this.body});

  factory Post.createPost(Map<String, dynamic> obj) {
    return Post(
      id: obj['id'],
      title: obj['title'],
      body: obj['body'],
    );
  }

  static Future<List<Post>> connectApi({int start, int limit}) async {
    String url =
        "https://jsonplaceholder.typicode.com/posts?_start=$start&_limit=$limit";
    var obj = await http.get(url);
    var jsons = json.decode(obj.body) as List;
    return jsons
        .map<Post>((item) =>
            Post(id: item['id'], title: item['title'], body: item['body']))
        .toList();
  }
}
