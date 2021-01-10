import 'package:flutter/material.dart';
import 'package:navigasi_multiple_page/second.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Second Page'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SecondPage();
            },
          ));
        },
        color: Colors.blue,
      )),
    );
  }
}
