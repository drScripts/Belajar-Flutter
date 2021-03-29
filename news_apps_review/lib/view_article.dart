import 'package:flutter/material.dart';
import 'package:news_apps_review/articles_json.dart';

class ViewArticle extends StatelessWidget {
  static const routeName = '/view_article';
  final Articles articles;
  ViewArticle({@required this.articles});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.title),
      ),
      body: Column(
        children: [
          Image.network(articles.urlToImage),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articles.title,
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  articles.description,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text('Author : ${articles.author}'),
                Text('Published At : ${articles.publishedAt}'),
                Divider(
                  color: Colors.grey,
                ),
                Text(articles.content),
                Container(
                    margin: EdgeInsets.only(top: 25),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/news_full',
                              arguments: articles);
                        },
                        child: Text('View News'))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
