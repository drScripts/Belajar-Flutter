import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(
        title: Text(
          'Hero Animation ClipRRect',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Hero(
          tag: 'chaeyoung',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/98/66/4c/98664c8c68d590f8cb0982fc4d36bf32.jpg'),
                )),
          ),
        ),
      ),
    );
  }
}
