import 'package:firebase_authentication/auth_services.dart';
import 'package:flutter/material.dart';

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
              onPressed: () async {
                await AuthServices.signInAnonymous();
              },
              child: Text('Sign in Anonymous'),
            ),
          ],
        ),
      ),
    );
  }
}
