import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:review_terakhir/ui/home_page.dart';
import 'package:review_terakhir/ui/login.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    return (user == null) ? Login() : HomePage(user: user);
  }
}
