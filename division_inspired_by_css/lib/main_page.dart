import 'package:division_inspired_by_css/custom_button.dart';
import 'package:division_inspired_by_css/style/costum_style.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Division inspired by css'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CButton(
              CustomStyle.buttonStyle.clone()
                ..rotate(-5)
                ..background.color(Colors.green)
                ..border(all: 3, color: Colors.green[900]),
            ),
            SizedBox(
              height: 20,
            ),
            CButton(CustomStyle.buttonStyle),
          ],
        ),
      ),
    );
  }
}
