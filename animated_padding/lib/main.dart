import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animed Pdding'),
          backgroundColor: Colors.pink[100],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 4),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              (myPadding == 5) ? myPadding = 20 : myPadding = 5;
                            },
                          );
                        },
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 5),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 5),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 5),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
