import 'package:flutter/material.dart';

class CustomProgress extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;
  CustomProgress({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.timer,
          color: Colors.grey[700],
        ),
        SizedBox(
          width: 5,
        ),
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 10,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 10,
                width: width * ratio,
                decoration: BoxDecoration(
                  color: (ratio < 0.3)
                      ? Colors.red
                      : (ratio < 0.6)
                          ? Colors.amber
                          : Colors.greenAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
