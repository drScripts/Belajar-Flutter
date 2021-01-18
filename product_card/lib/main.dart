import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_card/product_card.dart';
import 'package:provider/provider.dart';
import 'provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(
          title: Text('Product Card'),
          backgroundColor: Colors.pink[100],
        ),
        body: ChangeNotifierProvider<ProductState>(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProductCard(
                  imageUrl:
                      'https://cdn1.sph.harvard.edu/wp-content/uploads/sites/21/2018/07/fruitveg.jpeg',
                  name: 'Buah Buaha Mix 1 Kg',
                  price: 'Rp. 25.000',
                  quantity: productState.quantity,
                  notification:
                      (productState.quantity > 5) ? 'Diskon 10%' : null,
                  onAddCart: () {},
                  onAdd: () {
                    productState.quantity += 1;
                  },
                  onDec: () {
                    productState.quantity -= 1;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
