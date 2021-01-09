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
                decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Colors.amber, Colors.blue],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ))),
      ),
    );
  }
}
