import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Image Widget'),
            backgroundColor: Colors.pink[100],
          ),
          body: Center(
            child: Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      color: Colors.amber,
                      child: Image(
                          fit: BoxFit.contain,
                          repeat: ImageRepeat.repeatX,
                          image: NetworkImage(
                              'https://www.pinclipart.com/picdir/big/385-3857336_react-logo-png-name-form-validation-clipart.png')),
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.all(3),
                          color: Colors.redAccent,
                          child: Image(
                            image: AssetImage('assets/chae.jpg'),
                          ))),
                  Flexible(
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.all(3),
                          color: Colors.green,
                          child: Image(
                              image: NetworkImage(
                                  'https://www.pinclipart.com/picdir/big/385-3857336_react-logo-png-name-form-validation-clipart.png'))))
                ],
              ),
            ),
          )),
    );
  }
}
