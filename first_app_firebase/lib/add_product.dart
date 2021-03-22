import 'package:first_app_firebase/database_services.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  bool isLoading = false;
  var isDone;
  int indicator = 2;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: "");
    TextEditingController priceController = TextEditingController(text: "");
    TextEditingController idController = TextEditingController(text: "");
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.add_box),
                        hintText: "Input Product Name"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: TextField(
                    controller: priceController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_money_rounded),
                        hintText: "Input Product Price"),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 350,
                  child: TextField(
                    controller: idController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.stay_primary_portrait),
                      hintText: "Input Product id Without Space",
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () async {
                    isLoading = true;
                    String text = priceController.text;
                    int price;
                    if (checkIntParse(text)) {
                      price = int.parse(text);
                      isDone = await DatabaseServices.addData(
                          idController.text, nameController.text, price);
                      (isDone) ? indicator = 1 : indicator = 3;
                      setState(() {});
                    } else {
                      indicator = 3;
                      setState(() {});
                    }
                    isLoading = false;
                  },
                  child: Text("Add Product"),
                ),
                SizedBox(height: 50),
                loadingIndi(indicator, isLoading),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget loadingIndi(int indicator, bool isLoading) {
    return (isLoading)
        ? loading
        : (indicator == 1)
            ? iconYes
            : (indicator == 2)
                ? Container()
                : noDone;
  }

  Icon iconYes = Icon(
    Icons.check_outlined,
    color: Colors.green,
    size: 50,
  );

  Icon noDone = Icon(
    Icons.cancel,
    color: Colors.red,
    size: 50,
  );

  CircularProgressIndicator loading = CircularProgressIndicator();

  bool checkIntParse(String price) {
    try {
      int.parse(price);
      return true;
    } catch (e) {
      return false;
    }
  }
}
