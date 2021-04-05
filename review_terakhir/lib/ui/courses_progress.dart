import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/material/materials.dart';

class CoursesProgress extends StatelessWidget {
  final String title = Get.parameters['title'];
  final String subtitle = Get.parameters['subtitle'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, right: 16),
              child: ListView(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  VideoCard(
                    title: title,
                    subtitle: subtitle,
                  ),
                  CardProgress(
                    title: 'Main Tags',
                    value: 1,
                  ),
                  CardProgress(
                    title: 'Tags For Header',
                    value: 0.6,
                  ),
                  CardProgress(
                    title: 'Style Tags',
                    value: 0.3,
                  ),
                  CardProgress(
                    title: 'Hyperlink Tag',
                    value: 0,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 80,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Row(
                children: [
                  BackActionButton(),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    '$title',
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
