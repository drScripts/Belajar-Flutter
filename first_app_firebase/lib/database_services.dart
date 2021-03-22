import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference _colection =
      Firestore.instance.collection('products');

  static Future<bool> addData(String id, String name, int price) async {
    try {
      await _colection.document(id).setData({
        "name": name,
        "price": price,
      });
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
