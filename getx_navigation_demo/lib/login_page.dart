import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          Get.off(MainPage());
        },
        child: Text("LOGIN"),
      ),
    ));
  }
}
