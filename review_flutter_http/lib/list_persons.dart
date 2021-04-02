import 'package:flutter/material.dart';
import 'package:review_flutter_http/services/api_get_services.dart';

class ListPerson extends StatefulWidget {
  _ListPersonState createState() => _ListPersonState();
}

class _ListPersonState extends State<ListPerson> {
  ApiGetServices data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Person'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: ApiGetServices().connectToApi('10').asStream(),
          builder: (_, snapshot) {
            Future.delayed(Duration(seconds: 3));
            ApiGetServices api = snapshot.data;
            return Text((snapshot.hasData)
                ? 'name: ${api.firstName} | id: ${api.id} | email: ${api.email}'
                : 'Hasil : ');
          },
        ),
      ),
    );
  }
}
