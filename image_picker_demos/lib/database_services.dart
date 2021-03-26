import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference _collection =
      Firestore.instance.collection('products');

  static Future<String> uploadImage(File imageFile) async {
    String fileName = basename(imageFile.path);
    StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
    StorageUploadTask task = ref.putFile(imageFile);
    StorageTaskSnapshot snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }

  static Future<void> sendData(String name, String price, String id) async {
    try {
      await _collection.document(id).setData({
        'name': name,
        'price': price,
      });
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<DocumentSnapshot> getData(String id) async {
    try {
      DocumentSnapshot snapshot = await _collection.document(id).get();
      return snapshot;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<void> deleteData(String id) async {
    try {
      await _collection.document(id).delete();
    } catch (e) {
      print(e);
    }
  }
}
