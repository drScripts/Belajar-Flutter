import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:review_terakhir/material/materials.dart';
import 'dart:math';

class AboutPage extends StatelessWidget {
  final String title = Get.parameters['title'];
  final String duration = Get.parameters['duration'];
  final int price = int.parse(Get.parameters['price']);
  final maths = Random();

  @override
  Widget build(BuildContext context) {
    bool status = maths.nextBool();
    print(status);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 116,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Image.asset(
                    'assets/UI.png',
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      NumberFormat.simpleCurrency(
                        locale: 'en-us',
                        decimalDigits: 0,
                      ).format(price),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the course',
                        style: GoogleFonts.rubik(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "You can launch a new career in web develop-ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. ",
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Duration',
                        style: GoogleFonts.rubik(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '$duration',
                        style: GoogleFonts.rubik(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 53,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          (status)
                              ? Get.offAllNamed('/saved?status=success')
                              : Get.offAllNamed('/saved?status=failed');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffE3562A),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text(
                          'Add to chart',
                          style: GoogleFonts.rubik(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    BackActionButton(),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      title,
                      style: GoogleFonts.rubik(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
