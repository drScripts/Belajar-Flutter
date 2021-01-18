import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'custom_progress.dart';
import 'share_state.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Custom Progress Bar'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgress(
                    width: 200,
                    value: timeState.time,
                    totalValue: 15,
                  ),
                ),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => RaisedButton(
                    color: Colors.amber,
                    child: Text('Start'),
                    onPressed: () {
                      Timer.periodic(Duration(seconds: 1), (timer) {
                        timeState.time -= 1;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
