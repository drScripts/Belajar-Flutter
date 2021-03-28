import 'package:coba_apps_news/articles_json.dart';
import 'package:flutter/material.dart';

class ListNews extends StatelessWidget {
  static const nameRoute = '/listNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todays News'),
      ),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Articles> artics = Articles().parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: artics.length,
            itemBuilder: (context, index) {
              return _builderListVews(context, artics[index]);
            },
          );
        },
      ),
    );
  }

  Widget _builderListVews(BuildContext context, Articles artic) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8.0),
      leading: Image.network(
        artic.urlToImage,
        width: 100,
      ),
      title: Text(artic.title),
      subtitle: Text(artic.author),
    );
  }
}
