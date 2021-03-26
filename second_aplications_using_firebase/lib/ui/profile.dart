import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:second_aplications_using_firebase/services/auth_services.dart';
import 'package:second_aplications_using_firebase/services/database.dart';

class Profile extends StatefulWidget {
  final String name;
  Profile(this.name);
  @override
  _ProfileState createState() => _ProfileState(name);
}

class _ProfileState extends State<Profile> {
  String imagePath;
  String name;
  _ProfileState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (imagePath == null)
                ? Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  )
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
            SizedBox(
              height: 35,
            ),
            Text(name),
            SizedBox(
              height: 30,
            ),
            (imagePath == null)
                ? ElevatedButton(
                    onPressed: () async {
                      File file = await getFile();
                      imagePath = await DatabaseServices.sendProfile(file);
                      print(imagePath);
                      setState(() {});
                    },
                    child: Text('Select Image Profile'),
                  )
                : Container(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

Future<File> getFile() async {
  return await ImagePicker.pickImage(source: ImageSource.gallery);
}
