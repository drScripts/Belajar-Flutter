import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _angka = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Stateful Widget',
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _angka.toString(),
                  style: TextStyle(fontSize: 10 + _angka.toDouble()),
                ),
                RaisedButton(
                    child: Text('Pencet Aku'),
                    color: Colors.cyan,
                    onPressed: tambahAngka)
              ]),
        ),
      ),
    );
  }

  void tambahAngka() {
    setState(() {
      // mengubah tampilan secara langsung atau refresh
      _angka++;
    });
  }
}
