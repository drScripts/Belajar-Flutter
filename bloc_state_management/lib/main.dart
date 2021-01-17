import 'package:bloc_state_management/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ColorBloc color = ColorBloc();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                // menghubungkan ke selang
                color.eventSink.add(ColorEvent.toAmber);
              },
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                color.eventSink.add(ColorEvent.toLightBlue);
              },
            ),
          ],
        ),
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('BloC Tanpa Library'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: StreamBuilder(
              // menghubungkan ke stateStream
              stream: color.stateStream,
              // awal awal data
              initialData: Colors.amber,
              builder: (context, snapShot) {
                return AnimatedContainer(
                  width: 100,
                  height: 100,
                  // snapShot merupakan data yang di throw daari class colorBloc
                  color: snapShot.data,
                  duration: Duration(milliseconds: 500),
                );
              }),
        ),
      ),
    );
  }
}
