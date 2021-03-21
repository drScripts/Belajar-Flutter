import 'package:cloud_firestore_demos/auth_services.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
              width: 350,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.red),
                  helperText: ('Input Your Email'),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.red,
                  ),
                  helperText: ('Input Your Password'),
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signIn(
                      emailController.text, passController.text);
                },
                child: Text('Log in'),
              ),
            ),
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
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signInAnonymous();
                },
                child: Text('Login as Anonymous'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
