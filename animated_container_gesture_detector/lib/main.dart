import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random rand = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Animated Container and Gesture Detector'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: Duration(seconds: (1)),
            width: 50 + rand.nextInt(101).toDouble(),
            height: 100 + rand.nextInt(201).toDouble(),
            color: Color.fromARGB(
                255, rand.nextInt(256), rand.nextInt(256), rand.nextInt(256)),
          ),
        ),
      ),
    ));
  }
}
