import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'costum_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('Costum Button'), backgroundColor: Colors.pink[100]),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CostumButton(Colors.cyan, Colors.green, Icons.chat_bubble_outline),
            CostumButton(Colors.green, Colors.yellow,
                Icons.control_point_duplicate_rounded),
          ],
        ),
      ),
    ));
  }
}
