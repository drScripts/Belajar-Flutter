import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SwitchDN extends StatefulWidget {
  @override
  _SwitchDNState createState() => _SwitchDNState();
}

class _SwitchDNState extends State<SwitchDN> {
  // 0 = malam
  // 1 = night -> day
  // 2 = day
  // 3 = day -> night
  int state = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: GestureDetector(
        onTap: () {
          if (state == 0) {
            setState(() {
              state = 1;
            });
          } else if (state == 2) {
            setState(() {
              state = 3;
            });
          }
        },
        child: FlareActor(
          "assets/switch_day_night_new.flr",
          animation: (state == 0)
              ? "night_idle"
              : (state == 1)
                  ? "switch_day"
                  : (state == 2)
                      ? "day_idle"
                      : "switch_night",
          callback: (animate) {
            if (animate == "switch_day") {
              setState(() {
                state = 2;
              });
            } else if (animate == "switch_night") {
              setState(() {
                state = 0;
              });
            }
          },
        ),
      ),
    );
  }
}
