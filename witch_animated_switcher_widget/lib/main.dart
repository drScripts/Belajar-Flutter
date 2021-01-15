import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;
  Widget kotak = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(
        color: Colors.black,
        width: 3,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Animated Switch Widget'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: Duration(
                  seconds: 2,
                ),
                child: kotak,
              ),
              Switch(
                value: isOn,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red,
                onChanged: (value) {
                  isOn = value;
                  setState(
                    () {
                      if (isOn) {
                        kotak = Text("On");
                      } else {
                        kotak = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),
                        );
                      }
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
