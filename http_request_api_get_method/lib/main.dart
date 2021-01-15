import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'request_method.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person hasil = null;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Get Method'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((hasil != null) ? hasil.name : "hai"),
              RaisedButton(
                child: Text('Get Data'),
                onPressed: () {
                  Person.connectApi('2').then(
                    (value) {
                      hasil = value;
                      setState(() {});
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
