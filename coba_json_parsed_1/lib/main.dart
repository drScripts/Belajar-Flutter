import 'package:coba_json_parsed_1/articles_list.dart';
import 'package:coba_json_parsed_1/articles_views.dart';
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
      initialRoute: ArticleList.routeName,
      routes: {
        ArticleList.routeName: (context) => ArticleList(),
        ArticlesViews.routeName: (context) => ArticlesViews(
              artic: ModalRoute.of(context).settings.arguments,
            ),
      },
    );
  }
}
