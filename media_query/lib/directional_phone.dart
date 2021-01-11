import 'package:flutter/material.dart';

class DirectionalPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directional Phone Query'),
        backgroundColor: Colors.pink[100],
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(children: directionalMethod())
          : Row(children: directionalMethod()),
    );
  }

  List<Widget> directionalMethod() {
    return <Widget>[
      Container(color: Colors.green, width: 100, height: 100),
      Container(color: Colors.amber, width: 100, height: 100),
      Container(color: Colors.red, width: 100, height: 100),
    ];
  }
}
