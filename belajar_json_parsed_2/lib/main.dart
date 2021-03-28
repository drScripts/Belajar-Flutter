import 'package:belajar_json_parsed_2/article_web.dart';
import 'package:belajar_json_parsed_2/home_page.dart';
import 'package:belajar_json_parsed_2/view_each.dart';
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
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => HomePage(),
        ViewEach.routeName: (context) =>
            ViewEach(articel: ModalRoute.of(context).settings.arguments),
        ArticleWeb.routeName: (context) =>
            ArticleWeb(article: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
