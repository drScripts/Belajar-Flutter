import 'package:belajar_parsed_json_3/news_list.dart';
import 'package:belajar_parsed_json_3/view_news.dart';
import 'package:belajar_parsed_json_3/web_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsList.routeName,
      routes: {
        NewsList.routeName: (context) => NewsList(),
        ViewNews.routeName: (context) => ViewNews(
              article: ModalRoute.of(context).settings.arguments,
            ),
        WebNews.routeName: (context) =>
            WebNews(article: ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
