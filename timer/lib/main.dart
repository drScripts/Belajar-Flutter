import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Timer Class'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: (isBlack) ? Colors.black : Colors.red,
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Ubah Warna langsung'),
                onPressed: () {
                  Timer.run(() {
                    (isBlack) ? isBlack = false : isBlack = true;
                    setState(() {});
                  });
                },
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Ubah Warna 5 Detik Delay'),
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    (isBlack) ? isBlack = false : isBlack = true;
                    setState(() {});
                  });
                },
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Start Timer'),
                onPressed: () {
                  isStop = false;
                  Timer.periodic(
                    Duration(seconds: 1),
                    (timer) {
                      if (isStop) timer.cancel();
                      setState(
                        () {
                          counter++;
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Stop Timer'),
                onPressed: () {
                  isStop = true;
                  setState(() {});
                },
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text('Reset Timer'),
                onPressed: () {
                  Timer.periodic(
                    Duration(milliseconds: 100),
                    (timer) {
                      timer.cancel();
                      isStop = true;
                      counter = 0;
                      setState(
                        () {
                          counter = 0;
                        },
                      );
                      counter = 0;
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
