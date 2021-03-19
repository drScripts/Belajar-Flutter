import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/auth_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;
  HomePage(this.user);

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
            Text(user.uid.toString()),
            ElevatedButton(
              onPressed: () async {
                await AuthServices.signOutAnonymous();
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
