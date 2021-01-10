import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Text Field'),
              backgroundColor: Colors.pink[100],
            ),
            body: Container(
              margin: EdgeInsets.all(40),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextField(
                      // obscureText: true, // untuk password
                      maxLength: 100, //maximal character
                      maxLines: 2, // maximal line kebbawah
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: controller,
                    ),
                    Text(controller.text),
                  ]),
            )));
  }
}
