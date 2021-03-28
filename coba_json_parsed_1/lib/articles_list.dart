import 'package:coba_json_parsed_1/articles_json.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  static const routeName = '/first_page';
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
          final List<Articles> artics = Articles().parsedJson(snapshot.data);
          return ListView.builder(
            itemCount: artics.length,
            itemBuilder: (context, index) {
              return _listArticles(context, artics[index]);
            },
          );
        },
      ),
    );
  }

  Widget _listArticles(BuildContext context, Articles artic) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 6,
      ),
      title: Text(artic.title),
      leading: Image.network(
        artic.urlToImage,
        width: 100,
      ),
      subtitle: Text(artic.author),
      onTap: () {
        Navigator.pushNamed(
          context,
          '/details',
          arguments: artic,
        );
      },
    );
  }
}
