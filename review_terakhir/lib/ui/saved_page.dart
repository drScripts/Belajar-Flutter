import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/material/materials.dart';

class SavedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String status = Get.parameters['status'];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  BackActionButton(),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'Saved',
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 127,
            ),
            (status == 'failed') ? SavedFailed() : SavedSuccess(),
          ],
        ),
      ),
    );
  }
}
