import 'package:flutter/material.dart';
import 'package:rive_flutter/switch_day_night.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rive + Flutter coba'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: SwitchDN(),
      ),
    );
  }
}
