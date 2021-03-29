import 'package:flutter/material.dart';
import 'package:news_apps_review/articles_json.dart';

class MainPage extends StatelessWidget {
  static const nameRoute = '/main_page';

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
          List<Articles> articles = Articles().jsonParsed(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return _loadView(context, articles[index]);
            },
          );
        },
      ),
    );
  }

  Widget _loadView(BuildContext context, Articles articl) {
    return ListTile(
      leading: Image.network(
        articl.urlToImage,
        width: 100,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/view_article', arguments: articl);
      },
      title: Text(articl.title),
      subtitle: Text(articl.author),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 20,
      ),
    );
  }
}
