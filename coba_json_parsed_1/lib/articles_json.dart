import 'dart:convert';

class Articles {
  String author, title, description, url, urlToImage, publishedAt, content;

  Articles(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  Articles.fromJson(Map<String, dynamic> articles) {
    author = articles['author'];
    title = articles['title'];
    description = articles['description'];
    url = articles['url'];
    urlToImage = articles['urlToImage'];
    publishedAt = articles['publishedAt'];
    content = articles['content'];
  }

  List<Articles> parsedJson(String json) {
    if (json == null) {
      return null;
    }

    final List parsed = jsonDecode(json);
    return parsed.map((json) => Articles.fromJson(json)).toList();
  }
}
