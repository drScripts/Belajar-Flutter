import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_reviews/services/auth_services.dart';
import 'package:crud_reviews/services/database_services.dart';
import 'package:crud_reviews/ui/item_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final String email;
  HomePage({this.email});

  final CollectionReference collection =
      FirebaseFirestore.instance.collection('persons');

  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController ageController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
              onPressed: () async {
                await AuthServices().signOut();
              },
              child: Text('Log Out'))
        ],
        title: Text(email),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: collection.orderBy('age').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data.docs
                          .map(
                            (e) => ItemCard(
                              e.data()['name'],
                              e.data()['age'],
                              onUpdate: () {
                                collection
                                    .doc(e.id)
                                    .update({"age": e.data()['age'] + 1});
                              },
                              onDelete: () {
                                collection.doc(e.id).delete();
                              },
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircularProgressIndicator()],
                      ),
                    );
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -5),
                    spreadRadius: 5,
                    blurRadius: 50,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: "Input Person Name",
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: ageController,
                          decoration: InputDecoration(
                              hintText: "Input Person Age",
                              prefixIcon: Icon(Icons.person_pin)),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await DatabaseServices().addData(nameController.text,
                          int.tryParse(ageController.text) ?? 0);
                      nameController.text = "";
                      ageController.text = "";
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          'Add Data',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
