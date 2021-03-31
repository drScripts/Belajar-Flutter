import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_cloud_firestore/UI/item_card.dart';
import 'package:crud_cloud_firestore/services/database_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController(text: "");
  final TextEditingController ageController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebase = FirebaseFirestore.instance;
    CollectionReference collection = firebase.collection('persons');

    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<DocumentSnapshot>(
            stream: collection.doc('nathan').snapshots(),
            builder: (context, snapshot) {
              return (snapshot.hasData)
                  ? Text(
                      "${snapshot.data.data()['name']}: ${snapshot.data.data()['age']}")
                  : Text('Home Page');
            }),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              //note: One Take Only

              // FutureBuilder<QuerySnapshot>(
              //   future: collection.get(),
              //   builder: (_, snapshot) {
              //     if (snapshot.hasData) {
              //       return Column(
              //         children: snapshot.data.docs
              //             .map(
              //               (e) => ItemCard(
              //                 e.data()['name'],
              //                 e.data()['age'],
              //               ),
              //             )
              //             .toList(),
              //       );
              //     } else {
              //       return Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     }
              //   },
              // ),

              // Synconize

              // filter note
              /*
                 * sort menggunakan orderby pada stream / future di 
                 *  collection.orderby((query)).snapshot / get
                 * untuk filter menggunakan where pada stream / future di
                 *  collection.where((query)).snapshot / get
                 */
              StreamBuilder<QuerySnapshot>(
                stream: collection.orderBy('age', descending: true).snapshots(),
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
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),

              SizedBox(
                height: 220,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(-5, 0),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: nameController,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Input Person Name',
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: ageController,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_add),
                            hintText: 'Input Person Age',
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await DatabaseServices().addData(
                          name: nameController.text, age: ageController.text);
                      nameController.text = "";
                      ageController.text = "";
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Add Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
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

  Widget listTile(String name, int age) {
    return ListTile(
      title: Text(name),
      subtitle: Text('$age'),
      trailing: Row(
        children: [
          GestureDetector(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Icon(Icons.arrow_upward),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
