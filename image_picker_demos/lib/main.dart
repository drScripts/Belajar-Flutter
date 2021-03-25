import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker_demos/auth_services.dart';
import 'package:image_picker_demos/wrapper.dart';
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
        child: Wrapper(),
      ),
    );
  }
}
