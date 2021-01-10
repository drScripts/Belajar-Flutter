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
              margin: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextField(
                      // obscureText: true, // untuk passwords
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          prefixIcon: Icon(Icons.check, color: Colors.green),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Input Name',
                          hintText: 'Input your Name',
                          hintStyle: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                      maxLength: 100, // maximal line kebbawah
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
