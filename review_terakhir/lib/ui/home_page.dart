import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';
import 'package:review_terakhir/material/card_item.dart';
import 'package:review_terakhir/material/costum_tab_bar.dart';
import 'package:review_terakhir/services/database_services.dart';
import 'package:review_terakhir/material/materials.dart';

class HomePage extends StatelessWidget {
  final User user;
  HomePage({this.user});

  @override
  Widget build(BuildContext context) {
    String url = '';
    String name = '';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.9,
                ),
                CardItem(
                  urlImage: 'assets/ui_kids.png',
                  time: '3 h 30 min',
                  title: 'UI',
                  subtitle: 'Advanced mobile interface design',
                  price: 50,
                ),
                CardItem(
                  urlImage: 'assets/ui_kids.png',
                  time: '3 h 30 min',
                  title: 'Swift',
                  subtitle: 'Advanced iOS apps',
                  price: 50,
                ),
                CardItem(
                  urlImage: 'assets/ui_kids.png',
                  time: '3 h 30 min',
                  title: 'HTML',
                  subtitle: 'Advanced web applications',
                  price: 50,
                ),
                CardItem(
                  urlImage: 'assets/ui_kids.png',
                  time: '3 h 30 min',
                  title: 'Scrum',
                  subtitle: 'Advanced project organization course',
                  price: 50,
                ),
                CardItem(
                  urlImage: 'assets/ui_kids.png',
                  time: '3 h 30 min',
                  title: 'Python',
                  subtitle: 'Python for Machine Learning',
                  price: 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                ),
              ],
            ),
            CostumTabBar(
              home: true,
              profiles: false,
              settings: false,
              user: user,
              url: url,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(0, -10),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ],
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 4,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello,',
                              style: GoogleFonts.rubik(
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width - 114,
                              child: StreamBuilder<DocumentSnapshot>(
                                stream: DatabaseServices()
                                    .getName(user.uid)
                                    .asStream(),
                                builder: (context, snapshot) {
                                  ReCase rc;
                                  if (snapshot.hasData) {
                                    name = '${snapshot.data.data()['name']}';
                                    url = '${snapshot.data.data()['imageUrl']}';
                                    rc = ReCase('$name');
                                  }
                                  return Text(
                                    (rc != null) ? rc.titleCase : 'Anonymous',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.rubik(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Align(
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: FloatingActionButton(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              elevation: 0,
                              onPressed: () {},
                              child: Icon(
                                Icons.notifications,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 20, right: 20, top: 30, bottom: 20),
                        suffixIcon: Container(
                          margin: EdgeInsets.only(right: 25),
                          child: Icon(
                            Icons.search,
                            size: 35,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: "Search Course",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category:',
                          style: GoogleFonts.rubik(fontSize: 14),
                        ),
                        categoryButton(name: '#CSS'),
                        categoryButton(name: '#UX'),
                        categoryButton(name: '#UI'),
                        categoryButton(name: '#Swift'),
                      ],
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
