import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter color = ColorFilter.mode(Colors.blue, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: color,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[100],
          appBar: AppBar(
            title: Text(
              'SelectableText ToggleButtons ColorFileterd',
              style: TextStyle(fontSize: 16),
            ),
            backgroundColor: Colors.pink[100],
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                "ini adalah selectable text",
                style: TextStyle(fontSize: 20),
                showCursor: true,
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                children: [
                  Icon(Icons.alarm),
                  Icon(Icons.chat_rounded),
                  Icon(Icons.add),
                ],
                isSelected: isSelected,
                onPressed: (index) {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = (i == index) ? true : false;
                  }
                  setState(() {});
                },
                borderRadius: BorderRadius.circular(20),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
