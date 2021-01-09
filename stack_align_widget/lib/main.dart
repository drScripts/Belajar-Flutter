import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final List<Widget> data = <Widget>[];

  MyApp() {
    for (var i = 0; i < 100; i++) {
      data.add(
          Text('Data Aku Suka Susunya Ke-$i', style: TextStyle(fontSize: 25)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stack dan Align Widget'),
        backgroundColor: Colors.pink[100],
      ),
      body: Stack(
        children: <Widget>[
          // background
          Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(flex: 1, child: Container(color: Colors.red)),
                      Flexible(flex: 1, child: Container(color: Colors.green)),
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(flex: 1, child: Container(color: Colors.green)),
                      Flexible(flex: 1, child: Container(color: Colors.red))
                    ],
                  ))
            ],
          ),
          // listView

          ListView(
            children: data,
          ),
          // button
          Align(
            alignment: Alignment.topCenter, // costum dengan Alignment(x,y)
            child: RaisedButton(
              child: Text(
                'Tombol',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ],
      ),
    ));
  }
}
