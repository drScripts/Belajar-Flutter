import 'package:crud_reviews/ui/home_page.dart';
import 'package:crud_reviews/ui/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user == null) ? LoginPage() : HomePage(email: user.email);
  }
}
