import 'package:flutter/material.dart';

class ManagementData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('AUpdd Data'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Update Data'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Delete Data'),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
