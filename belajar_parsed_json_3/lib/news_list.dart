import 'package:belajar_parsed_json_3/articles_json.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  static const routeName = '/news_list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today's News"),
      ),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          List<Articles> article = Articles().jsonParsed(snapshot.data);
          return ListView.builder(
            itemCount: article.length,
            itemBuilder: (context, index) {
              return _listItem(context, article[index]);
            },
          );
        },
      ),
    );
  }

  Widget _listItem(BuildContext context, Articles article) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, '/view_news', arguments: article);
      },
      leading: Image.network(
        article.urlToImage,
        width: 100,
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
      contentPadding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
    );
  }
}
