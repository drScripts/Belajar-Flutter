import 'package:firebase_auth_email_password/auth_services.dart';
import 'package:firebase_auth_email_password/main.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(50),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: passController,
                    obscureText: true,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      AuthServices.signUp(
                          emailController.text, passController.text);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    child: Text('Sign Up'),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      AuthServices.signIn(
                          emailController.text, passController.text);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
