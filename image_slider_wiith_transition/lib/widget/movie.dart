import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:image_slider_wiith_transition/style/style.dart';

class Movie extends StatelessWidget {
  final String url;
  final double scale;
  Movie(
      {this.scale = 1,
      this.url =
          "https://www.itl.cat/pngfile/big/309-3094896_iu-wallpapers-26-images-dodowallpaper-lockscreen-iu-wallpaper.jpg"});

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: box
        ..clone()
        ..background.image(url: url, fit: BoxFit.cover)
        ..width(200 * scale)
        ..height(300 * scale),
    );
  }
}
