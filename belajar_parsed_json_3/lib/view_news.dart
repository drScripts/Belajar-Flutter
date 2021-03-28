import 'package:belajar_parsed_json_3/articles_json.dart';
import 'package:flutter/material.dart';

class ViewNews extends StatelessWidget {
  static const routeName = '/view_news';
  final Articles article;
  ViewNews({@required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Column(
        children: [
          Image.network(article.urlToImage),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(article.description),
                Divider(
                  color: Colors.grey,
                ),
                Text('Author : ${article.author}'),
                Text('Published At : ${article.publishedAt}'),
                Divider(
                  color: Colors.grey,
                ),
                Text(article.content),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/web_news',
                          arguments: article);
                    },
                    child: Text('View More'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
