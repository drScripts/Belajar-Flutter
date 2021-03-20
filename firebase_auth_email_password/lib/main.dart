import 'package:firebase_auth_email_password/auth_services.dart';
import 'package:firebase_auth_email_password/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamProvider.value(
        child: Wrapper(),
        value: AuthServices.fireBaseUserStream, // yang di pantau terus menerus
      ),
    );
  }
}
