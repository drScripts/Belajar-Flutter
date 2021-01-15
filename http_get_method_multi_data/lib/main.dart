import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'request_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String hasil = 'No Data';
  int jumlah;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Get Method Multi Data'),
            backgroundColor: Colors.pink[100]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(hasil),
              Text('jumlah ${jumlah}'),
              RaisedButton(
                child: Text(
                  'Get All Data',
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Person.connectApi(page: '1').then((value) {
                    hasil = '';
                    jumlah = value.length;
                    for (int i = 0; i < value.length; i++) {
                      hasil = hasil + '[' + value[i].name + ']';
                      setState(() {});
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
