import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_terakhir/material/costum_tab_bar.dart';
import 'package:review_terakhir/material/materials.dart';
import 'package:review_terakhir/services/database_services.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool onYes = true;
  @override
  Widget build(BuildContext context) {
    User user = Get.arguments[0];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 316,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 80,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 178,
                        ),
                        Text(
                          'Settings',
                          style: GoogleFonts.rubik(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                  ),
                  Image.asset(
                    'assets/kids_settings.png',
                    width: 343,
                    height: 190,
                  ),
                ],
              ),
            ),
            StreamBuilder<DocumentSnapshot>(
                stream: DatabaseServices().getName(user.uid).asStream(),
                builder: (context, snapshot) {
                  return (snapshot.hasData)
                      ? ListView(
                          children: [
                            SizedBox(
                              height: 316,
                            ),
                            ListSettingsNoSubs(
                              trailings: Switch(
                                  value: onYes,
                                  onChanged: (value) {
                                    onYes = !onYes;
                                    setState(() {});
                                  }),
                              icon: Icons.circle_notifications,
                              title: 'Notification',
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              child: Text(
                                'Account Settings',
                                style: GoogleFonts.rubik(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            ListSettingsWithSubs(
                              trailings: Icon(Icons.arrow_forward_ios_outlined),
                              icon: Icons.person_rounded,
                              title: 'Name',
                              subtitle: snapshot.data.data()['name'].toString(),
                            ),
                            ListSettingsWithSubs(
                              trailings: Icon(Icons.arrow_forward_ios_outlined),
                              icon: Icons.mail,
                              title: 'E-mail',
                              subtitle: user.email.toString(),
                            ),
                            ListSettingsWithSubs(
                              trailings: Icon(Icons.arrow_forward_ios_outlined),
                              icon: Icons.lock,
                              title: 'Password',
                              subtitle: 'changed 2 weeks ago',
                            ),
                          ],
                        )
                      : CircularProgressIndicator();
                }),
            CostumTabBar(
              profiles: false,
              settings: true,
              home: false,
              user: user,
            ),
            BackActionButton(),
          ],
        ),
      ),
    );
  }
}
