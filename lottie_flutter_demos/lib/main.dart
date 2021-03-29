import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;
  @override
  void initState() {
    super.initState();
    _animation =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Lottie Animation',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: LottieBuilder.network(
                'https://assets9.lottiefiles.com/packages/lf20_gb5bmwlm.json',
                controller: _animation,
              ),
            ),
            Text(
              'Eugene Croquette',
              style: GoogleFonts.poppins(),
            ),
            ElevatedButton(
              onPressed: () {
                _animation.forward().whenComplete(() => _animation.reset());
              },
              child: Text(
                'Play Animation',
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
