import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Qr Code'),
            backgroundColor: Colors.pink[100],
          ),
          body: Center(
              child: QrImage(
            version: QrVersions.auto,
            data: "Nathan Ganteng",
            size: 200,
            embeddedImage:
                NetworkImage('https://wallpaperaccess.com/full/1631200.jpg'),
            embeddedImageStyle: QrEmbeddedImageStyle(
              size: Size(80, 80),
            ),
            gapless: false,
            errorCorrectionLevel: QrErrorCorrectLevel.H,
          )),
        ));
  }
}
