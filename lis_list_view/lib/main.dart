import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> data = <Widget>[];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('List dan List View'),
            backgroundColor: Colors.pink[100],
          ),
          body: ListView(children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                      child: Text('Hapus Data'),
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          counter -= 1;
                          data.removeAt(counter);
                        });
                      }),
                  RaisedButton(
                      child: Text('Tambah Data'),
                      onPressed: () {
                        setState(() {
                          data.add(Text('Data Ke-' + (counter + 1).toString(),
                              style: TextStyle(fontSize: 35)));
                          counter++;
                        });
                      },
                      color: Colors.green),
                  RaisedButton(
                      child: Text('Clear Data'),
                      color: Colors.yellowAccent,
                      onPressed: () {
                        setState(() {
                          data.clear();
                          counter = 0;
                        });
                      })
                ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: data)
          ])),
    );
  }
}
