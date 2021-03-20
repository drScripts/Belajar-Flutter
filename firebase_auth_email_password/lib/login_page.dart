import 'package:firebase_auth_email_password/auth_services.dart';
import 'package:firebase_auth_email_password/sign_up.dart';
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
                await AuthServices.signInAnounymous();
              },
              child: Text('Login As Anonymous'),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ));
              },
              child: Text('Sign Up With Email'),
            ),
          ],
        ),
      ),
    );
  }
}
