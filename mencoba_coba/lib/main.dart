import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mencoba_coba/database_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () async {
                  DatabaseServices().firstAdd('Nathan', 'github.com');
                },
                child: Text('first'),
              ),
              ElevatedButton(
                onPressed: () async {
                  DatabaseServices().secondAdd(
                    'eXH1rEfUfq77CBlxtJy0',
                    'success',
                  );
                },
                child: Text('second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
