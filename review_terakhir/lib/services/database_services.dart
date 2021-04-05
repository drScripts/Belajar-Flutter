import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:path/path.dart';

class DatabaseServices {
  CollectionReference firebase =
      FirebaseFirestore.instance.collection('persons');

  Future<void> sendName(String name, String uid) async {
    try {
      await firebase.doc('$uid').set({
        'name': name,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<DocumentSnapshot> getName(String uid) async {
    try {
      DocumentSnapshot snapshot = await firebase.doc('$uid').get();
      return snapshot;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> sendProfile({String url, String uid}) async {
    DocumentSnapshot snapshot = await getName(uid);
    String name = snapshot.data()['name'];

    firebase.doc(uid).set({
      'name': name,
      'imageUrl': url,
    });
  }

  Future<String> storeImage(File imageFile, {User user}) async {
    String pathfile = basename(imageFile.path);

    String url = '';
    firebase_storage.Reference storage =
        firebase_storage.FirebaseStorage.instance.ref().child(pathfile);
    firebase_storage.UploadTask tasks = storage.putFile(imageFile);
    await tasks.whenComplete(() async {
      url = await storage.getDownloadURL();
    });

    sendProfile(url: url, uid: user.uid);
    return url;
  }
}
