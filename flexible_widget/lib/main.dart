import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flexible Widget'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                          color: Colors.amber, margin: EdgeInsets.all(5))),
                  Flexible(
                      flex: 1,
                      child: Container(
                          color: Colors.black, margin: EdgeInsets.all(5))),
                  Flexible(
                      flex: 1,
                      child: Container(
                          color: Colors.deepPurple, margin: EdgeInsets.all(5))),
                ],
              )),
          Flexible(
              flex: 2,
              child: Container(color: Colors.green, margin: EdgeInsets.all(5))),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
            ),
          )
        ],
      ),
    ));
  }
}
