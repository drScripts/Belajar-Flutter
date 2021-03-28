import 'package:coba_apps_news/list_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "News List",
      debugShowCheckedModeBanner: false,
      initialRoute: ListNews.nameRoute,
      routes: {
        ListNews.nameRoute: (context) => ListNews(),
      },
    );
  }
}
