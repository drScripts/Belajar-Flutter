import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'post_result_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Result postResult = null;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Api Post Method'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job
                  : 'None'),
              RaisedButton(
                onPressed: () {
                  Result.connectApi('Nathanael', 'Android Developer').then(
                    (val) {
                      postResult = val;
                    },
                  );
                  setState(() {});
                },
                child: Text('POST'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
