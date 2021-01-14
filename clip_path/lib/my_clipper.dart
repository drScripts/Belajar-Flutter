import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(
        // gariis dari ujung kiri atas ke ujung bawah kiri gambar
        0, //x
        size.height); //y
    path.quadraticBezierTo(
        // x1,y1 = titik control di tengah tengah lengkungan dan x2,y2 = koor dinat akhir dari path
        size.width / 2, // x1
        size.height * 0.5, // y1
        size.width, // x2
        size.height); // y2
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
