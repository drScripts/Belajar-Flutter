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
          title: Text(
            'Row Columns Widget',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.pink[100]),
      body: Column(
        // Column ke bawah , Rows ke samping
        mainAxisAlignment:
            MainAxisAlignment.center, // mengatur alignment coloumn secara verti
        crossAxisAlignment:
            CrossAxisAlignment.start, // mengatur alignment coloumn secara hori
        children: <Widget>[
          Text('Nathanael'),
          Text('Claresta'),
          Text('Anak Goblok'),
          Row(
            children: <Widget>[
              Text('Claresta '),
              Text('Nathanael '),
              Text('For Ever ')
            ],
          )
        ],
      ),
    ));
  }
}
