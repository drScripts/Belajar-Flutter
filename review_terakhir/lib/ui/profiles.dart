import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:review_terakhir/material/costum_tab_bar.dart';
import 'package:review_terakhir/material/materials.dart';
import 'package:review_terakhir/services/auth_services.dart';
import 'package:review_terakhir/services/database_services.dart';
import 'dart:math';

class Profile extends StatefulWidget {
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final picker = ImagePicker();
  String imageUrl;
  User user;

  Future<File> getImage() async {
    PickedFile file = await picker.getImage(source: ImageSource.gallery);

    File files = File(file.path);
    return files;
  }

  @override
  void initState() {
    super.initState();
    user = Get.arguments[0];
  }

  @override
  Widget build(BuildContext context) {
    var rands = Random();
    var penentu = rands.nextInt(2);
    String status;
    switch (penentu) {
      case 0:
        status == 'failed';
        break;
      case 1:
        status == 'success';
        break;
      default:
        status == 'failed';
        break;
    }
    User user = Get.arguments[0];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            CostumTabBar(
              profiles: true,
              home: false,
              settings: false,
              user: user,
              url: imageUrl,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        BackActionButton(),
                        Container(
                          width: MediaQuery.of(context).size.width - 110,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Profile',
                                style: GoogleFonts.rubik(
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  StreamBuilder<DocumentSnapshot>(
                      stream: DatabaseServices().getName(user.uid).asStream(),
                      builder: (context, snapshot) {
                        String url;
                        if (snapshot.data != null) {
                          url = snapshot.data.data()['imageUrl'];
                        }

                        return (snapshot == null)
                            ? CircularProgressIndicator()
                            : GestureDetector(
                                onTap: () async {
                                  File images = await getImage();
                                  User user = Get.arguments[0];
                                  String url = await DatabaseServices()
                                      .storeImage(images, user: user);
                                  imageUrl = url;
                                },
                                child: Container(
                                  width: 174,
                                  height: 174,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: (url != null)
                                          ? NetworkImage(url)
                                          : AssetImage('assets/Avatar.png'),
                                    ),
                                  ),
                                ),
                              );
                      }),
                  SizedBox(
                    height: 50,
                  ),
                  ListProfiles(
                    title: "Your Courses",
                    onTap: () {
                      Get.toNamed('/yourCourses', arguments: user);
                    },
                  ),
                  ListProfiles(
                      title: "Saved",
                      onTap: () {
                        Get.toNamed('/saved?status=$status');
                      }),
                  ListProfiles(
                    title: "Your Payment",
                    onTap: () {
                      Get.toNamed('/payment');
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: TextButton(
                      onPressed: () async {
                        await AuthServices()
                            .logOut()
                            .then((value) => Get.offAllNamed('/transition'));
                      },
                      child: Text(
                        'Log out',
                        style: GoogleFonts.rubik(
                          color: Colors.black,
                        ),
                      ),
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
