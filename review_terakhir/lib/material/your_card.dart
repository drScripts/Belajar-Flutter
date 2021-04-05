import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class YourCard extends StatelessWidget {
  final String urlImage, time, title, subtitle;
  YourCard({this.urlImage, this.time, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, top: 16),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/yourProgress?title=$title&subtitle=$subtitle');
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 3,
          color: Color(0xffF8F2EE),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Image.asset('$urlImage'),
              Container(
                margin: EdgeInsets.only(top: 8, bottom: 8, right: 18),
                alignment: Alignment.centerRight,
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$time',
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5BA092),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$title',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.rubik(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$subtitle',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.rubik(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
