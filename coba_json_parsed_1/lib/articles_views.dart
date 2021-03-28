import 'package:coba_json_parsed_1/articles_json.dart';
import 'package:flutter/material.dart';

class ArticlesViews extends StatelessWidget {
  static const routeName = '/details';
  final Articles artic;
  ArticlesViews({@required this.artic});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artic.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(artic.urlToImage),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(artic.description),
                  Divider(
                    color: Colors.green,
                  ),
                  Text(
                    artic.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text('Published On : ${artic.publishedAt}'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Author : ${artic.author}'),
                  Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    artic.content,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Read More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
