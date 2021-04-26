import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nyoba_firebase/database_services.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await DatabaseServices()
                      .addData('Nathanael',
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTRao3PX-eurpUC9P8Wz_GKksXWFvuZdlmOA&usqp=CAU')
                      .whenComplete(() => print('complete'))
                      .onError((error, stackTrace) => print('erorr Bos'));
                },
                child: Text('first'),
              ),
              ElevatedButton(
                onPressed: () async {},
                child: Text('second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
