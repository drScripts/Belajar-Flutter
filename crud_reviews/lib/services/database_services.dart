import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  CollectionReference collection =
      FirebaseFirestore.instance.collection('persons');

  Future<void> addData(String name, int age) async {
    await collection.doc(name).set({
      "name": name,
      "age": age,
    });
  }
}
