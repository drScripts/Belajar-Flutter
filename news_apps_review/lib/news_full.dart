import 'package:flutter/material.dart';
import 'package:news_apps_review/articles_json.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsFull extends StatelessWidget {
  static const routeName = '/news_full';

  final Articles articles;
  NewsFull({@required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.title),
      ),
      body: WebView(
        initialUrl: articles.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
