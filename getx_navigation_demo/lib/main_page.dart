import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/second_page?name=Nathan Davis&from=Indonesia',
                  arguments: ['Hello', 'Guys']);
            },
            child: Text("Go to Second Page"),
          ),
        ));
  }
}
