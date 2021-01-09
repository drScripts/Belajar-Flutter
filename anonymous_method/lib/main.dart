import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah text";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Anonymous Method'), backgroundColor: Colors.pink[100]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message, style: TextStyle(fontSize: 25)),
              RaisedButton(
                  child: Text('Tekan Aku'),
                  color: Colors.cyan,
                  onPressed: () {
                    setState(() {
                      message = "Tombol ini Ditekan";
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
