import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Method'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Text('Hello Claresta'),
      ),
    ));
  }
}
