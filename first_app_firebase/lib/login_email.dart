import 'package:first_app_firebase/auth_services.dart';
import 'package:flutter/material.dart';

class LoginEmail extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Input Your Email"),
              ),
              width: 350,
            ),
            SizedBox(height: 30),
            Container(
              child: TextField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                    hintText: "Input Your Password",
                    prefixIcon: Icon(Icons.vpn_key)),
              ),
              width: 350,
            ),
            SizedBox(height: 50),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signInEmail(
                      emailController.text, passController.text);
                },
                child: Text('Log In'),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signUp(
                      emailController.text, passController.text);
                },
                child: Text('Sign Up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
