import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  String name;
  int age;
  DatabaseServices({this.name, this.age});
  CollectionReference collection =
      FirebaseFirestore.instance.collection('persons');

  Future<void> addData({String name, String age}) async {
    await collection.doc(name).set({
      "name": name,
      "age": int.tryParse(age) ?? 0,
    });
  }

  Future<QuerySnapshot> getDataOneTime() async {
    QuerySnapshot snapshot = await collection.get();
    return snapshot;
  }
}
