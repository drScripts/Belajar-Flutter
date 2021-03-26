import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_aplications_using_firebase/services/auth_services.dart';
import 'package:second_aplications_using_firebase/ui/database_management.dart';
import 'package:second_aplications_using_firebase/ui/profile.dart';

class HomePage extends StatefulWidget {
  final FirebaseUser user;
  HomePage(this.user);

  @override
  _HomePageState createState() => _HomePageState(user);
}

class _HomePageState extends State<HomePage> {
  FirebaseUser user;
  _HomePageState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => StreamProvider.value(
                        value: AuthServices.firebaseUserStream,
                        child: Profile(user.uid)),
                  ),
                );
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ManagementData()));
              },
              child: Text('Data Management'),
            ),
          ],
        ),
      ),
    );
  }
}
