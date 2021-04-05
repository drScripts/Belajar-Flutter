import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:review_terakhir/splash_screen.dart';
import 'package:review_terakhir/ui/about_page.dart';
import 'package:review_terakhir/ui/courses_progress.dart';
import 'package:review_terakhir/ui/payment_page.dart';
import 'package:review_terakhir/ui/profiles.dart';
import 'package:review_terakhir/ui/saved_page.dart';
import 'package:review_terakhir/ui/settings_page.dart';
import 'package:review_terakhir/ui/sign_up.dart';
import 'package:review_terakhir/ui/your_courses.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/start',
          page: () => SplashScreen(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/signUp',
          page: () => SignUp(),
        ),
        GetPage(
          name: '/transition',
          page: () => Transitions(),
        ),
        GetPage(
          name: '/profiles',
          page: () => Profile(),
        ),
        GetPage(
          name: '/settings',
          page: () => SettingsPage(),
        ),
        GetPage(
          name: '/saved',
          page: () => SavedPage(),
        ),
        GetPage(
          name: '/payment',
          page: () => PaymentPage(),
        ),
        GetPage(
          name: '/about',
          page: () => AboutPage(),
        ),
        GetPage(
          name: '/yourCourses',
          page: () => YourCourses(),
        ),
        GetPage(
          name: '/yourProgress',
          page: () => CoursesProgress(),
        ),
      ],
      initialRoute: '/start',
    );
  }
}
