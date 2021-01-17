import 'package:flutter/material.dart';

/// class User profile digunakan untuk mereturn profile page
class MainPage extends StatelessWidget {
  /// build ini untuk menyimpan informasi user
  final String name, role, urlImage;

  /// [name] user memiliki *default* yaitu `Username`
  ///
  /// [role] user memiliki *default* yaitu `No Role`
  ///
  /// [urlImage] memiliki **default** yaitu `default user`
  MainPage(
      {this.name = "Username",
      this.role = "No Role",
      this.urlImage =
          "https://sttasm.ac.id/wp-content/uploads/2018/06/user-default.jpg"});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              width: 200,
              height: 200,
              image: NetworkImage(urlImage),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(name),
          SizedBox(
            height: 20,
          ),
          Text(
            '[' + role + ']',
          ),
        ],
      ),
    );
  }
}
