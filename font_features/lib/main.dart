import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Flutter Typography'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Contoh 01 (Tanpa Apapun)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Contoh 02 (Small Caps)',
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable('smcp')],
                ),
              ),
              Text(
                'Contoh 03 (Small Caps)',
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [
                    FontFeature.enable('smcp'),
                    FontFeature.enable('frac'),
                  ],
                ),
              ),
              Text(
                'Contoh Cardo 04 (Tanpa Apa pun)',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Cardo',
                ),
              ),
              Text(
                'Contoh Cardo 05 (old style figures)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cardo',
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              Text(
                'Gabriola 06 (Default)',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Gabriola',
                ),
              ),
              Text(
                'Gabriola 07 (Stylelisset nomor 5)',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Gabriola',
                  fontFeatures: [FontFeature.stylisticSet(5)],
                ),
              ),
              Text(
                'Milonga 3 1/3 (Small Cap & Frac)',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Milonga',
                    fontFeatures: [
                      FontFeature.enable('smcp'),
                      FontFeature.enable('frac'),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
