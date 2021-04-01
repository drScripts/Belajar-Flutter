import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Url Launcher Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myButton(
                name: 'Call Launcher',
                function: () async {
                  await call('+6285777716380');
                }),
            myButton(name: 'SMS Launcher', function: () async {}),
            myButton(
                name: 'Email Launcher',
                function: () async {
                  await emailSend('nathanael.vd@gmail.com');
                }),
            myButton(name: 'Url Launcher', function: () async {}),
          ],
        ),
      ),
    );
  }

  Widget myButton({String name, Function function}) =>
      ElevatedButton(onPressed: function, child: Text(name));

  Future<void> call(String phoneNumber) async {
    await launch('tel:$phoneNumber');
  }

  Future<void> emailSend(String email) async {
    await launch('mailto:$email' + '?subject=News&body=hello');
  }

  Future<void> smsSend(String phoneNumber) async {}
  Future<void> urlLauncher(String url,
      {bool forceWebView, bool enableJavascript = false}) async {}
}
