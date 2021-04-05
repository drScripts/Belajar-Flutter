import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CostumTabBar extends StatelessWidget {
  final bool profiles, settings, home;
  final User user;
  final String url;
  CostumTabBar({
    this.profiles,
    this.settings,
    this.home,
    this.user,
    this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(1, 10),
              blurRadius: 10,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        width: MediaQuery.of(context).size.width / 1.2,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (profiles) Get.offAllNamed('/transition');
                if (settings) Get.offAllNamed('/transition');
              },
              child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book,
                      size: 35,
                      color: (home) ? Colors.orange[900] : Colors.black,
                    ),
                    Text(
                      'Courses',
                      style: GoogleFonts.rubik(
                        fontSize: 15,
                        color: (home) ? Colors.orange[900] : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/profiles', arguments: [user, url]);
              },
              child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 35,
                      color: (profiles) ? Colors.orange[900] : Colors.black,
                    ),
                    Text(
                      'Profiles',
                      style: GoogleFonts.rubik(
                        fontSize: 15,
                        color: (profiles) ? Colors.orange[900] : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (profiles) Get.offNamed('/settings', arguments: [user, url]);
                if (home) Get.toNamed('/settings', arguments: [user, url]);
              },
              child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 35,
                      color: (settings) ? Colors.orange[900] : Colors.black,
                    ),
                    Text(
                      'Settings',
                      style: GoogleFonts.rubik(
                        fontSize: 15,
                        color: (settings) ? Colors.orange[900] : Colors.black,
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
