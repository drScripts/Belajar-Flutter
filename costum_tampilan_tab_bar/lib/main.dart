import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar tabs = TabBar(
      // indicatorColor: Colors.grey,
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.deepPurple, width: 5))),
      tabs: <Tab>[
        Tab(
          icon: Icon(Icons.comment),
          text: 'Coments',
        ),
        Tab(icon: Icon(Icons.personal_video), text: 'Videos'),
        Tab(
          icon: Icon(Icons.camera),
          text: 'Camera',
        ),
        Tab(
          icon: Icon(Icons.ballot),
          text: 'Ballot',
        )
      ],
    );

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.pink[100],
                title: Text('Tab Bar'),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(tabs.preferredSize.height),
                    child: Container(color: Colors.amber, child: tabs))),
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
