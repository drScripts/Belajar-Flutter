import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_email_password/auth_services.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final FirebaseUser user;
  MainPage(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(user.uid.toString()),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () async {
              await AuthServices.signOut();
            },
            child: Text('Sign Out'),
          )
        ],
      )),
    );
  }
}
