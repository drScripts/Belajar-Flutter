import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ChangeIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Icon'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 100,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(
                width: 25,
                color: Colors.red,
                iconStyle: IconStyle(
                  iconData: Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
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
              begin: 0.125,
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
        ],
      ),
    );
  }
}
