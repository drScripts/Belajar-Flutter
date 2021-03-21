import 'package:cloud_firestore_demos/home_page.dart';
import 'package:cloud_firestore_demos/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser user = Provider.of<FirebaseUser>(context);
    return (user == null) ? LoginPage() : HomePage(user);
  }
}
