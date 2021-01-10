import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        leading: Icon(Icons.apps),
        title: Text('Card Widget'),
        backgroundColor: Colors.pink[100],
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            buildCard(
                text: 'Activate AirPlane Mode',
                icon: Icons.airplanemode_active,
                size: 20),
            buildCard(
                text: 'DeActivate AirPlane Mode',
                icon: Icons.airplanemode_inactive,
                size: 18),
            buildCard(),
            buildCard(),
            buildCard(),
            buildCard(),
          ],
        ),
      ),
    ));
  }

  Card buildCard(
      {String text = 'None',
      IconData icon = Icons.bookmarks,
      double size = 30}) {
    return Card(
      elevation: 50,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(30),
              child: Icon(icon, size: 40, color: Colors.green)),
          Text(text, style: TextStyle(fontSize: size))
        ],
      ),
    );
  }
}
