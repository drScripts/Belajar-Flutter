import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  CollectionReference firebase =
      FirebaseFirestore.instance.collection('persons');

  Future<void> addData(String name, String url) async {
    await firebase.add({
      'name': name,
      'imageurl': url,
    });
  }

  Future<void> secondAddData(String status, String uid) async {
    await firebase.doc(uid).set({
      'status': status,
    });
  }
}
