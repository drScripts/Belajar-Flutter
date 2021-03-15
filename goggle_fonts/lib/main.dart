import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goggle_fonts/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.dancingScriptTextTheme()
              .copyWith(bodyText1: GoogleFonts.greatVibes())),
      home: MainPage(),
    );
  }
}
