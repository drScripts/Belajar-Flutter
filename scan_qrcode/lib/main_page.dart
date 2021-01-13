import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String hasil = "Hasil Scan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Scanner'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                hasil = await scanner.scan();
                setState(() {});
              },
              child: Text('Scan'),
            ),
            SizedBox(height: 20),
            Text(hasil),
          ],
        ),
      ),
    );
  }
}
