import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_aplications_using_firebase/ui/home_page.dart';
import 'package:second_aplications_using_firebase/ui/login_page.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser user = Provider.of<FirebaseUser>(context);

    return (user == null) ? LoginPage() : HomePage(user);
  }
}
