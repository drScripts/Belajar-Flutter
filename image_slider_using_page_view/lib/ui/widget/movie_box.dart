import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:image_slider_using_page_view/ui/style/styles.dart';

class MovieBox extends StatelessWidget {
  final String url;
  MovieBox(
      {this.url =
          "https://blog.sqlauthority.com/wp-content/uploads/2007/06/null-500x259.png"});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover),
    );
  }
}
