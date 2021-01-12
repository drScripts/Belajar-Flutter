import 'package:flutter/material.dart';
import 'dart:math';

class CostumButton extends StatefulWidget {
  final Color mainColor, secondColor;
  final IconData icons;
  @override
  _CostumButtonState createState() =>
      _CostumButtonState(mainColor, secondColor, icons);
  CostumButton(this.mainColor, this.secondColor, this.icons);
}

class _CostumButtonState extends State<CostumButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData icons;
  _CostumButtonState(this.mainColor, this.secondColor, this.icons);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (!isPressed) ? 10 : 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: (!isPressed) ? mainColor : secondColor,
                    borderRadius: BorderRadius.circular(15),
                    child: Transform.rotate(
                      angle: -pi / 4,
                      child: Icon(
                        icons,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
