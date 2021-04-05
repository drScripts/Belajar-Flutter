import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/material/costum_tab_bar.dart';
import 'package:review_terakhir/material/materials.dart';
import 'package:review_terakhir/material/your_card.dart';

class YourCourses extends StatelessWidget {
  final User user = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: ListView(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  YourCard(
                    urlImage: 'assets/ui_kids.png',
                    time: 'Left 1 h 20 min ',
                    title: 'Swift',
                    subtitle: 'Advanced iOS apps',
                  ),
                  YourCard(
                    urlImage: 'assets/ui_kids.png',
                    time: 'Left 1 h 20 min ',
                    title: 'Python',
                    subtitle: 'Python for Machine Learning',
                  ),
                  YourCard(
                    urlImage: 'assets/ui_kids.png',
                    time: 'Left 1 h 20 min ',
                    title: 'Scrum',
                    subtitle: 'Advanced project organization course',
                  ),
                  YourCard(
                    urlImage: 'assets/ui_kids.png',
                    time: 'Left 1 h 20 min ',
                    title: 'HTML',
                    subtitle: 'Advanced web applications',
                  ),
                  YourCard(
                    urlImage: 'assets/ui_kids.png',
                    time: 'Left 1 h 20 min ',
                    title: 'UI',
                    subtitle: 'Advanced mobile interface design',
                  ),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Theme.of(context).scaffoldBackgroundColor,
              height: 80,
              child: Row(
                children: [
                  BackActionButton(),
                  SizedBox(width: 90),
                  Text(
                    'Your Courses',
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            CostumTabBar(
              home: true,
              profiles: false,
              settings: false,
              user: user,
            ),
          ],
        ),
      ),
    );
  }
}
