import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/third_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back to Main Page"),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: (Get.arguments as List<String>)
                        .map((e) => Text(e))
                        .toList() +
                    [
                      Text(Get.parameters['name'] +
                          ', ' +
                          Get.parameters['from']),
                    ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  String result = await Get.to<String>(ThirdPage());
                  print('=====> $result');
                },
                child: Text("Go to Third Page"),
              ),
            ],
          ),
        ));
  }
}
