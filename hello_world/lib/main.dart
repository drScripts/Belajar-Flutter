import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // terdapat 2 widget 1 stateless dan statefull
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Hello World'),
            backgroundColor: Colors.pinkAccent,
            foregroundColor: Colors.blueGrey),
        body: Center(child: Text('Hello I Love You All World')),
      ),
    );
  }
}
