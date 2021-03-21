import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  // make new database column
  static CollectionReference productCollection =
      Firestore.instance.collection('products');

  // function to add data or update data
  static Future<void> createUpdateProduct(
      String id, String name, int price) async {
    await productCollection.document(id).setData({
      "nama": name,
      'harga': price,
    });
  }

  //function get data
  static Future<DocumentSnapshot> getProduct(String id) async {
    return await productCollection.document(id).get();
  }

  // function delete data
  static Future<void> deleteProduct(String id) async {
    await productCollection.document(id).delete();
  }
}
