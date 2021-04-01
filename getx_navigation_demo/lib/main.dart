import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/login_page.dart';
import 'package:getx_navigation_demo/main_page.dart';
import 'package:getx_navigation_demo/second_page.dart';
import 'package:getx_navigation_demo/third_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      getPages: [
        GetPage(
            name: '/main_page',
            page: () => MainPage(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(seconds: 1)),
        GetPage(
            name: '/login_page',
            page: () => LoginPage(),
            transition: Transition.leftToRight),
        GetPage(
            name: '/second_page',
            page: () => SecondPage(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: Duration(seconds: 1)),
        GetPage(name: '/third_page', page: () => ThirdPage()),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_page',
    );
  }
}
