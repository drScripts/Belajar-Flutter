import 'package:flutter/material.dart';
import 'query_width_height.dart';
import 'directional_phone.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DirectionalPhone(),
    );
  }
}
