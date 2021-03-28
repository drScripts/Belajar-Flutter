import 'package:code_lab_news_apps/my_article.dart';
import 'package:flutter/material.dart';

class NewsListPage extends StatelessWidget {
  static const routeName = '/article_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today News'),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Articles> articles =
              Articles().parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return _buildArticlesItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildArticlesItem(BuildContext context, Articles article) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: Image.network(
        article.urlToImage,
        width: 100,
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
    );
  }
}
