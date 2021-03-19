/*
* Wrapper ini digunakan untuk menentukan akan kita ridirect
* ke login atau ke home
*/

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/home_page.dart';
import 'package:firebase_authentication/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null) ? LoginPage() : HomePage(firebaseUser);
  }
}
