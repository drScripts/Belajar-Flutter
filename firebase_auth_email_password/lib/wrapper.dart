import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_email_password/login_page.dart';
import 'package:firebase_auth_email_password/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser user =
        Provider.of<FirebaseUser>(context); // connect to Stream provider
    return (user == null) ? LoginPage() : MainPage(user);
  }
}
