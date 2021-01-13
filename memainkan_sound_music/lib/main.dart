import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audio;
  String durations = "00:00:00";
  _MyAppState() {
    audio = AudioPlayer();
    audio.onAudioPositionChanged.listen((duration) {
      setState(() {
        durations = duration.toString();
      });
    });
    audio.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audio.play(url);
  }

  void pause() async {
    await audio.pause();
  }

  void stop() async {
    await audio.stop();
  }

  void resume() async {
    await audio.resume();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing music'),
          backgroundColor: Colors.pink[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Play'),
                    onPressed: () {
                      playSound(
                          'https://sis.ijjiii.is/25549b7971bbf16a2d55c3a25ea26880/JuhUfqYmUgY/ciuzeeszccmzsr');
                    },
                  ),
                  RaisedButton(
                    child: Text('Pause'),
                    onPressed: () {
                      pause();
                    },
                  ),
                  RaisedButton(
                    child: Text('Stop'),
                    onPressed: () {
                      stop();
                    },
                  ),
                  RaisedButton(
                    child: Text('Resume'),
                    onPressed: () {
                      resume();
                    },
                  ),
                ],
              ),
              Text(
                durations,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
