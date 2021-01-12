import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Tab Bar'),
              bottom: TabBar(
                tabs: <Tab>[
                  Tab(
                    icon: Icon(Icons.comment),
                    text: 'Coments',
                  ),
                  Tab(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image(
                        image: NetworkImage(
                            'https://static.asiachan.com/Son.Chaeyoung.full.194789.jpg')),
                  )),
                  Tab(child: Icon(Icons.add_photo_alternate_outlined)),
                  Tab(child: Icon(Icons.camera))
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Center(child: Text('Tab 1')),
                Center(child: Text('Tab 2')),
                Center(child: Text('Tab 3')),
                Center(child: Text('Tab 4'))
              ],
            ),
          )),
    );
  }
}
