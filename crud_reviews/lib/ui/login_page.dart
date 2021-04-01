import 'package:crud_reviews/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Page',
              style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 350,
              child: TextField(
                controller: emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Input Your Email",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 350,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Input Your Password",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices()
                      .signIn(emailController.text, passwordController.text);
                },
                child: Text('Login'),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices()
                      .signUp(emailController.text, passwordController.text);
                },
                child: Text('Sign Up'),
              ),
            ),
            Container(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  await AuthServices().signInAnonymous();
                },
                child: Text('Login as Anonymous'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
