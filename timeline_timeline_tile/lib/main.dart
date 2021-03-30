import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_timeline_tile/change_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Line Tile Demo'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 100,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(color: Colors.red),
              afterLineStyle: LineStyle(color: Colors.green, thickness: 10),
              alignment: TimelineAlign.manual,
              lineXY: 0,
              isFirst: true,
              endChild: Text(
                'First',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: TimelineDivider(
              thickness: 10,
              color: Colors.green,
              begin: 0.10,
              end: 0.90,
            ),
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(color: Colors.red),
              beforeLineStyle: LineStyle(color: Colors.green, thickness: 10),
              afterLineStyle: LineStyle(color: Colors.green, thickness: 10),
              alignment: TimelineAlign.manual,
              lineXY: 1,
              endChild: Text(
                '2',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: TimelineDivider(
              thickness: 10,
              color: Colors.green,
              begin: 0.5,
              end: 0.9,
            ),
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(color: Colors.red),
              beforeLineStyle: LineStyle(color: Colors.green, thickness: 10),
              afterLineStyle: LineStyle(color: Colors.green, thickness: 10),
              alignment: TimelineAlign.manual,
              lineXY: 0.5,
              endChild: Text(
                '3',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: TimelineDivider(
              thickness: 10,
              begin: 0.1,
              end: 0.5,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(color: Colors.red),
              beforeLineStyle: LineStyle(color: Colors.green, thickness: 10),
              alignment: TimelineAlign.manual,
              lineXY: 0,
              isLast: true,
              endChild: Text(
                'Last',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChangeIcon();
                    },
                  ),
                );
              },
              child: Text('Change Icon'),
            ),
          ),
        ],
      ),
    );
  }
}
