import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  CollectionReference firebase =
      FirebaseFirestore.instance.collection('persons');

  Future<void> firstAdd(String name, String url) async {
    await firebase.add({
      'name': name,
      'imageUrl': url,
    });
  }

  Future<void> secondAdd(String id, String status) async {
    await firebase.doc(id).update({
      'status': status,
    });
  }
}
