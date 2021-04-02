import 'package:flutter/material.dart';
import 'package:review_flutter_http/services/api_post_services.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ApiPostServices postServices;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Person'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postServices != null)
                ? 'Hasil Kembalian : name: ${postServices.name} | id: ${postServices.id} | job: ${postServices.job} | createdAt: ${postServices.createdAt}'
                : 'Hasil Kembalian : '),
            ElevatedButton(
              onPressed: () async {
                await ApiPostServices.connectApi('Bejo Suka Bokep', 'Hentai')
                    .then((value) => postServices = value);

                setState(() {});
              },
              child: Text('Post'),
            ),
          ],
        ),
      ),
    );
  }
}
