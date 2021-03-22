import 'package:first_app_firebase/auth_services.dart';
import 'package:first_app_firebase/wrapper_anon.dart';
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
        value: AuthServices.userAuthStream,
        child: WrapperAnon(),
      ),
    );
  }
}
