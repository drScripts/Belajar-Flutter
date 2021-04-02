import 'package:flutter/material.dart';
import 'package:review_flutter_http/list_full_people.dart';
import 'package:review_flutter_http/list_persons.dart';
import 'package:review_flutter_http/main_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListPerson()));
              },
              icon: Icon(Icons.person),
              label: Text('List Person'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainPage()));
              },
              icon: Icon(Icons.person_add),
              label: Text('Add Person'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ListFullPeople()));
              },
              icon: Icon(Icons.person_sharp),
              label: Text('Add Person'),
            ),
          ],
        ),
      ),
    );
  }
}
