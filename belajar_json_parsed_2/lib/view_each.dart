import 'package:belajar_json_parsed_2/articles_json.dart';
import 'package:flutter/material.dart';

class ViewEach extends StatelessWidget {
  static const routeName = '/view_each';
  final ArticlesJson articel;
  ViewEach({@required this.articel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articel.title),
      ),
      body: Column(
        children: [
          Image.network(articel.urlToImage),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  articel.title,
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(articel.description),
                Divider(
                  color: Colors.grey,
                ),
                Text('Author : ${articel.author}'),
                Text('Publihed At : ${articel.publishedAt}'),
                Divider(
                  color: Colors.grey,
                ),
                Text(articel.content),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/article_web',
                          arguments: articel);
                    },
                    child: Text('View More'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
