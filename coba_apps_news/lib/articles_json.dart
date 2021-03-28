import 'dart:convert';

import 'package:flutter/cupertino.dart';

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

  Articles.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  List<Articles> parseArticles(String json) {
    if (json == null) {
      return [];
    }

    List parsed = jsonDecode(json);
    return parsed.map((json) => Articles.fromJson(json)).toList();
  }
}
