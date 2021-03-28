import 'package:belajar_json_parsed_2/articles_json.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const nameRoute = '/home_page';
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
          final List<ArticlesJson> parsed =
              ArticlesJson().articsParser(snapshot.data);
          return ListView.builder(
            itemCount: parsed.length,
            itemBuilder: (context, index) {
              return _bodyListViewArt(context, parsed[index]);
            },
          );
        },
      ),
    );
  }

  Widget _bodyListViewArt(BuildContext context, ArticlesJson parsed) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          title: Text(parsed.title),
          leading: Image.network(
            parsed.urlToImage,
            width: 100,
          ),
          subtitle: Text(parsed.author),
          onTap: () {
            Navigator.pushNamed(context, '/view_each', arguments: parsed);
          },
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
