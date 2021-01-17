import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MainPage main = MainPage(
    name: 'Chaeyoung',
    role: 'Girlfriend',
    urlImage: 'https://pbs.twimg.com/media/EZb41eRXkAAhG8F.jpg',
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Doc Document'),
          backgroundColor: Colors.pink[100],
        ),
        body: main,
      ),
    );
  }
}
