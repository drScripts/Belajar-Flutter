import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/services/auth_services.dart';
import 'package:review_terakhir/services/database_services.dart';
import 'package:review_terakhir/material/materials.dart';

class SignUp extends StatelessWidget {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              BackActionButton(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/kids_signup.png',
                    width: 400,
                    height: 300,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Create your account',
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      color: Color(0xff78746D),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    width: 380,
                    height: 53,
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Input Your Name',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 380,
                    height: 53,
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Input Your E-mail',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 380,
                    height: 53,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(),
                        labelText: 'Input Your Password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 380,
                    height: 53,
                    child: ElevatedButton(
                      onPressed: () async {
                        await AuthServices()
                            .signUp(
                                emailController.text, passwordController.text)
                            .then((value) {
                          DatabaseServices()
                              .sendName(nameController.text, value.uid)
                              .then((_) => Get.back());
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Color(0xffE3562A),
                      ),
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.rubik(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 53,
                    child: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.rubik(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff78746D),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
