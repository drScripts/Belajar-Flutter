import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Costum AppBar',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.airport_shuttle_sharp, color: Colors.white),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_balance_wallet_sharp), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.airline_seat_flat_angled_sharp),
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.airplanemode_on),
            onPressed: () {},
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                image: AssetImage('images/pattern.png'),
                fit: BoxFit.cover,
              )),
        ),
      ),
    ));
  }
}
