import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app_firebase/database_services.dart';
import 'package:flutter/material.dart';

class DeleteProduct extends StatefulWidget {
  @override
  _DeleteProductState createState() => _DeleteProductState();
}

class _DeleteProductState extends State<DeleteProduct> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: "");
    TextEditingController priceController = TextEditingController(text: "");
    TextEditingController idController = TextEditingController(text: "");
    bool show = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Product'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              child: TextField(
                readOnly: true,
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  hintText: "Input Product Name",
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextField(
                controller: priceController,
                readOnly: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money),
                  hintText: "Input Product Price",
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextField(
                onChanged: (context) async {
                  if (idController.text != "") {
                    DocumentSnapshot snapshot =
                        await DatabaseServices.getData(idController.text);
                    nameController.text = snapshot.data['name'];
                    priceController.text = snapshot.data['price'].toString();
                  } else {
                    nameController.text = "";
                    priceController.text = "";
                  }
                },
                controller: idController,
                decoration: InputDecoration(
                  hintText: "Input Products ID",
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                show = true;
                await DatabaseServices.deleteData(idController.text);
              },
              child: Text('Delete Data'),
            ),
            SizedBox(height: 25),
            checkDone(show),
          ],
        ),
      ),
    );
  }

  Widget checkDone(bool show) {
    return (show) ? Container() : Icon(Icons.check, color: Colors.green);
  }
}
