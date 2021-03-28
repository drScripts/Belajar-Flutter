import 'dart:convert';

class ArticlesJson {
  String author, title, description, url, urlToImage, publishedAt, content;

  ArticlesJson(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  ArticlesJson.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  List<ArticlesJson> articsParser(String json) {
    if (json == null) {
      return [];
    }

    final List parsed = jsonDecode(json);
    return parsed.map((jsons) => ArticlesJson.fromJson(jsons)).toList();
  }
}
