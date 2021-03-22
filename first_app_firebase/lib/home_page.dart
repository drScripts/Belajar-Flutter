import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app_firebase/add_product.dart';
import 'package:first_app_firebase/auth_services.dart';
import 'package:first_app_firebase/delete_product.dart';
import 'package:first_app_firebase/products.dart';
import 'package:first_app_firebase/update_product.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final FirebaseUser user;
  Homepage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: AuthServices.signOut,
                  child: Text('Log Out'),
                ),
              ),
              SizedBox(width: 25),
              Container(
                margin: EdgeInsets.only(top: 10, right: 5),
                alignment: Alignment.topRight,
                child: Text(user.uid),
              ),
            ],
          ),
          SizedBox(height: 100),
          Text(
            "Product Collection\nManagement",
            style: TextStyle(fontSize: 40),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddProduct();
              }));
            },
            child: Text(
              'Add Product',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DeleteProduct();
              }));
            },
            child: Text(
              'Delete Product',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UpdateProduct();
              }));
            },
            child: Text(
              'Update Product',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Products();
              }));
            },
            child: Text(
              'See All Product',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
