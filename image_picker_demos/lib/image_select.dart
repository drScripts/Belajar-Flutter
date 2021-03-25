import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_demos/auth_services.dart';
import 'package:image_picker_demos/database_services.dart';

class ImageSelect extends StatefulWidget {
  FirebaseUser user;
  ImageSelect(this.user);

  @override
  _ImageSelectState createState() => _ImageSelectState(user);
}

class _ImageSelectState extends State<ImageSelect> {
  FirebaseUser user;
  _ImageSelectState(this.user);
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (imagePath != null)
                ? Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(imagePath),
                      ),
                    ),
                  )
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                  ),
            SizedBox(
              height: 50,
            ),
            Text(user.uid),
            SizedBox(
              height: 50,
            ),
            (imagePath == null)
                ? ElevatedButton(
                    onPressed: () async {
                      File file = await getImage();
                      imagePath = await DatabaseServices.uploadImage(file);
                      setState(() {});
                    },
                    child: Text('Select Image'),
                  )
                : ElevatedButton(
                    onPressed: () async {
                      await AuthServices.signOut();
                    },
                    child: Text('Sign Out'),
                  ),
          ],
        ),
      ),
    );
  }
}

Future<File> getImage() async {
  return await ImagePicker.pickImage(source: ImageSource.gallery);
}
