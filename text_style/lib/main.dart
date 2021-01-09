import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "pacifico"),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Text Style'),
            backgroundColor: Colors.pink[100],
          ),
          body: Center(
              child: Text('Hello World',
                  style: TextStyle(
                      fontFamily: "pacifico",
                      fontSize: 45,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red[100],
                      decorationThickness: 5,
                      decorationStyle: TextDecorationStyle.wavy))),
        ));
  }
}
