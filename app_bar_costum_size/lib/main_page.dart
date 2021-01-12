import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBar(
          backgroundColor: Colors.pink[100],
          flexibleSpace: Stack(children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text('Costum Size AppBar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
