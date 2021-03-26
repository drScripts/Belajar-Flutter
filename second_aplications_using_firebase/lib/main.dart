import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:second_aplications_using_firebase/services/auth_services.dart';
import 'package:second_aplications_using_firebase/services/database.dart';
import 'package:second_aplications_using_firebase/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamProvider.value(
        value: AuthServices.firebaseUserStream,
        child: Wrapper(),
      ),
    );
  }
}
