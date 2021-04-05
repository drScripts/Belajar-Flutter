import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/services/auth_services.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/kids_login.png',
                width: 343,
                height: 253,
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.rubik(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login with social networks',
                      style: GoogleFonts.rubik(
                        color: Color(0xff78746D),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/facebook.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset(
                          'assets/instagram.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 343,
                      height: 53,
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Input Your Email',
                          labelStyle: GoogleFonts.rubik(fontSize: 14),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 343,
                      height: 53,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Input Your Password',
                          labelStyle: GoogleFonts.rubik(fontSize: 14),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                    Container(
                      width: 343,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed('/signUp');
                        },
                        child: Text(
                          'dont have account?',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await AuthServices().signIn(
                            emailController.text, passwordController.text);
                      },
                      child: Text(
                        'Log In',
                        style: GoogleFonts.rubik(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffE3562A),
                        minimumSize: Size(343, 58),
                        shape: StadiumBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () async {
                        await AuthServices().signInAnonymous();
                      },
                      child: Text(
                        'Skip',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff78746D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
