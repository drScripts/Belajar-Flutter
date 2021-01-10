import 'package:flutter/material.dart';
import 'package:navigasi_multiple_page/main_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Back to Main Page'),
        onPressed: () {
          Navigator.pop(context, MaterialPageRoute(
            builder: (context) {
              return MainPage();
            },
          ));
        },
        color: Colors.yellow,
      )),
    );
  }
}
