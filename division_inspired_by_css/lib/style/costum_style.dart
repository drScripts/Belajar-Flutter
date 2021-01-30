import 'package:flutter/material.dart';
import 'package:division/division.dart';

abstract class CustomStyle {
  static ParentStyle buttonStyle = ParentStyle(angleFormat: AngleFormat.degree)
    ..rotate(5)
    ..background.color(Colors.lightBlue)
    ..borderRadius(all: 60)
    ..border(all: 3, color: Colors.lightBlue[900])
    ..elevation(5)
    ..padding(left: 20, right: 20, top: 15, bottom: 15)
    ..ripple(true, splashColor: Colors.yellow);

  static TxtStyle textStyle = TxtStyle()
    ..textColor(Colors.black)
    ..fontSize(40)
    ..bold();
}
