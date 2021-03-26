import 'package:flutter/material.dart';
import 'package:second_aplications_using_firebase/services/auth_services.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController passController = TextEditingController(text: "");
  final TextEditingController emailController = TextEditingController(text: "");

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
                  hintText: "Input Your Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              child: TextField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key),
                    hintText: "Input Your Password"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signInEmail(
                      emailController.text, passController.text);
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.signUp(
                      emailController.text, passController.text);
                },
                child: Text('Sign Up'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices.loginAnonymous();
                },
                child: Text('Login As Anonymous'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
