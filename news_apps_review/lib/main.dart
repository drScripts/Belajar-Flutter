import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_apps_review/main_page.dart';
import 'package:news_apps_review/news_full.dart';
import 'package:news_apps_review/view_article.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: "News App",
      debugShowCheckedModeBanner: false,
      initialRoute: MainPage.nameRoute,
      routes: {
        MainPage.nameRoute: (context) => MainPage(),
        ViewArticle.routeName: (context) =>
            ViewArticle(articles: ModalRoute.of(context).settings.arguments),
        NewsFull.routeName: (context) =>
            NewsFull(articles: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
