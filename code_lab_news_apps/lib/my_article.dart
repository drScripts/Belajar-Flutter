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

  Articles.fromJson(Map<String, dynamic> article) {
    author = article['author'];
    title = article['title'];
    description = article['description'];
    url = article['url'];
    urlToImage = article['urlToImage'];
    publishedAt = article['publishedAt'];
    content = article['content'];
  }

  List<Articles> parseArticles(String json) {
    if (json == null) {
      return [];
    }

    final List parsed = jsonDecode(json);
    return parsed.map((json) => Articles.fromJson(json)).toList();
  }
}
