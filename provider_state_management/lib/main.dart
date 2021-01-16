import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'shared_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: ChangeNotifierProvider<SharedState>(
        create: (context) => SharedState(),
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<SharedState>(
              builder: (context, sharedState, _) {
                return Text(
                  'Provider State Management',
                  style: TextStyle(
                    color: sharedState.getColorLB,
                  ),
                );
              },
            ),
            backgroundColor: Colors.pink[100],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<SharedState>(
                  builder: (context, sharedState, _) {
                    return AnimatedContainer(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.bounceInOut,
                      color: sharedState.getColorLB,
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(margin: EdgeInsets.all(5), child: Text('AB')),
                    Consumer<SharedState>(
                      builder: (context, sharedState, _) {
                        return Container(
                          margin: EdgeInsets.all(5),
                          child: Switch(
                            value: sharedState.getLightBlue,
                            onChanged: (val) {
                              sharedState.setLightBlue = val;
                            },
                          ),
                        );
                      },
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text('LB')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
