import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
            title: Text('Shader Mask'), backgroundColor: Colors.pink[100]),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(15),
            child: ShaderMask(
              shaderCallback: (rectangle) {
                return LinearGradient(
                        colors: <Color>[Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)
                    .createShader(
                        Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image(
                image:
                    NetworkImage('https://wallpapercave.com/wp/wp2338561.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
