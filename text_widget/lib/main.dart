import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Text Widget'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
          child: Container(
              width: 200,
              height: 200,
              color: Colors.red[50],
              child: Text(
                'I Love Worldssssssssssssss ssssssssssssssssssssssssssss',
                maxLines: 3,
                style: TextStyle(
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ))),
    ));
  }
}
