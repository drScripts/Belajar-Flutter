import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;
  TextEditingController controler = TextEditingController(text: 'No Name');

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    // set save
    pref.setString('nama', controler.text);
    pref.setBool('isOn', isOn);
  }

  // load save data
  Future<String> loadNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama') ?? "no saved Data";
  }

  Future<bool> loadIsOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shared Preferences and (??) operator',
            style: TextStyle(fontSize: 15),
          ),
          backgroundColor: Colors.pink[100],
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controler,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.add,
                    ),
                  ),
                ),
                Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red,
                  value: isOn,
                  onChanged: (value) {
                    isOn = value;
                    setState(() {});
                  },
                ),
                RaisedButton(
                  child: Text('Save'),
                  onPressed: () {
                    saveData();
                  },
                ),
                RaisedButton(
                  child: Text('Load'),
                  onPressed: () {
                    loadNama().then(
                      (s) {
                        controler.text = s;
                        setState(() {});
                      },
                    );
                    loadIsOn().then(
                      (b) {
                        isOn = b;
                        setState(() {});
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
