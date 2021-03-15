import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e252d),
      appBar: AppBar(
        title: Text('Google Fonts Package'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I'll Keep Learning Flutter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "I'll Keep Learning Flutter to be an engineer",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
