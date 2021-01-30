import 'package:division_inspired_by_css/style/costum_style.dart';
import 'package:flutter/material.dart';
import 'package:division/division.dart';

class CButton extends StatefulWidget {
  final ParentStyle buttonStyle;
  CButton(this.buttonStyle);

  @override
  _CButtonState createState() => _CButtonState();
}

class _CButtonState extends State<CButton> {
  bool isTapDown = false;
  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        child: Txt(
          "Division",
          style: CustomStyle.textStyle,
        ),
      ),
      style: widget.buttonStyle
        ..clone()
        ..scale((isTapDown) ? 1.1 : 1)
        ..elevation((isTapDown) ? 0 : 5),
      gesture: Gestures()
        ..onTapDown((details) {
          setState(() {
            isTapDown = true;
          });
        })
        ..onTapUp((details) {
          setState(() {
            isTapDown = false;
          });
        })
        ..onTapCancel(() {
          setState(() {
            isTapDown = false;
          });
        }),
    );
  }
}
