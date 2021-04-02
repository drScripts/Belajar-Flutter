import 'package:flutter/material.dart';
import 'package:review_flutter_http/services/page_user_services.dart';

class ListFullPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Full people'),
      ),
      body: Center(
        child: FutureBuilder(
            future: PageUserServices.connectApi('1'),
            builder: (_, snapshot) {
              List<PageUserServices> users = snapshot.data;
              if (snapshot.hasData) {
                return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: users.length,
                  itemBuilder: (_, index) => ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: Image.network(
                      users[index].avatar,
                      width: 100,
                      height: 100,
                    ),
                    title: Text(
                        users[index].firstName + ' ' + users[index].lastName),
                    subtitle: Text(users[index].email),
                    trailing: Text(users[index].id),
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                  ],
                );
              }
            }),
      ),
    );
  }
}
