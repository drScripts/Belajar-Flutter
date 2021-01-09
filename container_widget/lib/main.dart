import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget'),
          backgroundColor: Colors.pink[100],
        ),
        body: Container(
            padding: EdgeInsets.all(10), // dalam dari si container
            margin: EdgeInsets.all(10), // luar dari si container
            color: Colors.redAccent,
            child: Container(
              margin: EdgeInsets.only(bottom: 400),
              color: Colors.blue,
            )),
      ),
    );
  }
}
