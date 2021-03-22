import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_firebase/home_page.dart';
import 'package:first_app_firebase/login_email.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser user = Provider.of<FirebaseUser>(context);

    return (user == null) ? LoginEmail() : Homepage(user);
  }
}
