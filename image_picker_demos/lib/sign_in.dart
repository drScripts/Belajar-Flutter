import 'package:flutter/material.dart';
import 'package:image_picker_demos/auth_services.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthServices.signInAnonymous();
          },
          child: Text('Sign in'),
        ),
      ),
    );
  }
}
