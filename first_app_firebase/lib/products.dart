import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 900,
          color: Colors.red,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [],
          ),
        ),
      ),
    );
  }
}
