import 'package:flutter/material.dart';

class WidthHeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          width: (MediaQuery.of(context).size.width / 3),
          height: (MediaQuery.of(context).size.height / 2),
        ),
      ),
    );
  }
}
