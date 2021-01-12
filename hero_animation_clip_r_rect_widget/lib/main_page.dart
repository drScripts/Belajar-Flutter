import 'package:flutter/material.dart';
import 'second_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text(
          'Hero Animation ClipRRect',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink[100],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'chaeyoung',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
                width: 100,
                height: 100,
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
