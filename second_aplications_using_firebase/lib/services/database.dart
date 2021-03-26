import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  CollectionReference _collection = Firestore.instance.collection('product');

  Future<void> addUpdateData(String name, int price, String id) async {
    try {
      await _collection.document(id).setData({
        'name': name,
        'price': price,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<DocumentSnapshot> getData(String id) async {
    try {
      DocumentSnapshot snapshot = await _collection.document(id).get();
      return snapshot;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> deleteData(String id) async {
    try {
      await _collection.document(id).delete();
    } catch (e) {
      print(e);
    }
  }

  static Future<String> sendProfile(File file) async {
    String name = basename(file.path);
    StorageReference ref = FirebaseStorage.instance.ref().child(name);
    StorageUploadTask task = ref.putFile(file);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}
