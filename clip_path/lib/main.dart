import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'my_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Clip Path'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: ClipPath(
              clipper: MyClipper(),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(
                    Rect.fromLTRB(0, 0, rect.width, rect.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/65/a8/89/65a889a04542e58d80858bf27b404f8b.jpg'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
