import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color red = Colors.red;
  Color blue = Colors.blue;
  Color target;
  bool isAccept = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Dragable Dragtarget Sizedbox material',
                    style: TextStyle(fontSize: 18)),
                backgroundColor: Colors.pink[100]),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Draggable<Color>(
                        data: red,
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: red,
                            shape: StadiumBorder(),
                            elevation: 15,
                          ),
                        ),
                        childWhenDragging: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          ),
                        ),
                        feedback: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: red.withOpacity(0.5),
                            shape: StadiumBorder(),
                            elevation: 15,
                          ),
                        ),
                      ),
                      Draggable<Color>(
                        data: blue,
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: blue,
                            shape: StadiumBorder(),
                            elevation: 15,
                          ),
                        ),
                        childWhenDragging: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          ),
                        ),
                        feedback: SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: blue.withOpacity(0.5),
                            shape: StadiumBorder(),
                            elevation: 15,
                          ),
                        ),
                      ) // untuk membungkus widget yang tidak memiliki width dan height agar memiliki width dan height
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DragTarget<Color>(
                        onWillAccept: (value) => true,
                        onAccept: (value) {
                          isAccept = true;
                          target = value;
                        },
                        builder: (context, cadidates, rejected) {
                          if (isAccept) {
                            return SizedBox(
                              width: 150,
                              height: 150,
                              child: Material(
                                color: target,
                                shape: StadiumBorder(),
                                elevation: 15,
                              ),
                            );
                          } else {
                            return SizedBox(
                              width: 150,
                              height: 150,
                              child: Material(
                                color: Colors.grey,
                                shape: StadiumBorder(),
                              ),
                            );
                          }
                        },
                      ),
                      DragTarget<Color>(
                        onWillAccept: (value) => true,
                        onAccept: (value) {
                          isAccept = true;
                          target = value;
                        },
                        builder: (context, cadidates, rejected) {
                          if (isAccept) {
                            return SizedBox(
                              width: 150,
                              height: 150,
                              child: Material(
                                color: target,
                                shape: StadiumBorder(),
                                elevation: 15,
                              ),
                            );
                          } else {
                            return SizedBox(
                              width: 150,
                              height: 150,
                              child: Material(
                                color: Colors.grey,
                                shape: StadiumBorder(),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  )
                ])));
  }
}
