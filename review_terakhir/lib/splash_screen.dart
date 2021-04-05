import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:review_terakhir/services/auth_services.dart';
import 'package:review_terakhir/wrapper.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  splashScreen() async {
    Duration duration = Duration(seconds: 3);
    return Timer(
      duration,
      () => Get.offNamed('/transition'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/Content.png'),
      ),
    );
  }
}

class Transitions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices().firebaseUserStream,
      initialData: null,
      child: Wrapper(),
    );
  }
}
