import 'package:first_app_firebase/auth_services.dart';
import 'package:first_app_firebase/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Login as Anonymous'),
              onPressed: () async {
                await AuthServices.signInAnonymous();
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StreamProvider.value(
                      value: AuthServices.userAuthStream, child: Wrapper());
                }));
              },
              child: Text('Login With Email'),
            ),
          ],
        ),
      ),
    );
  }
}
