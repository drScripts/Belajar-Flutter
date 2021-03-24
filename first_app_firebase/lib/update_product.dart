import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_app_firebase/database_services.dart';
import 'package:flutter/material.dart';

class UpdateProduct extends StatefulWidget {
  @override
  _UpdateProductState createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  int condition = 0;
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: "");
    TextEditingController priceController = TextEditingController(text: "");
    TextEditingController idController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350,
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Input Product Name",
                prefixIcon: Icon(Icons.add_box),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: TextField(
              controller: priceController,
              decoration: InputDecoration(
                hintText: "Input Product Price",
                prefixIcon: Icon(Icons.attach_money),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: TextField(
              onChanged: (_) async {
                DocumentSnapshot data =
                    await DatabaseServices.getData(idController.text);
                nameController.text = data.data['name'];
                priceController.text = data.data['price'].toString();
              },
              controller: idController,
              decoration: InputDecoration(
                hintText: "Input Product Id",
                prefixIcon: Icon(Icons.vpn_key),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () async {
              integerParse(
                  priceController.text, nameController.text, idController.text);
              setState(() {});
            },
            child: Text('Update Product'),
          ),
          SizedBox(height: 50),
          widgetCondition(condition),
        ],
      )),
    );
  }

  int integerParse(String price, String name, String id) {
    try {
      int prices = int.parse(price);
      DatabaseServices.addData(id, name, prices);
      condition = 1;
      return null;
    } catch (e) {
      condition = 3;
      return null;
    }
  }

  Widget widgetCondition(int condition) {
    return (condition == 0)
        ? Container()
        : (condition == 1)
            ? Icon(Icons.check, color: Colors.green, size: 50)
            : Icon(Icons.cancel, color: Colors.red, size: 50);
  }
}
