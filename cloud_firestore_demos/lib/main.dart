import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_demos/database_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: StreamProvider.value(
    //     value: AuthServices.firebaseUserStream,
    //     child: Wrapper(),
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firestore Demo"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await DatabaseServices.createUpdateProduct(
                        '1', 'Helm', 20000);
                  },
                  child: Text('Add Data'),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () async {
                    await DatabaseServices.createUpdateProduct(
                        '1', 'Helm Bagus', 1000000);
                  },
                  child: Text('Update Data'),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () async {
                    DocumentSnapshot snapshot =
                        await DatabaseServices.getProduct('1');
                    print("nama : " + snapshot.data['nama']);
                    print("harga : " + snapshot.data['harga'].toString());
                  },
                  child: Text('Get Data'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await DatabaseServices.deleteProduct('1');
                  },
                  child: Text('Delete Data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
