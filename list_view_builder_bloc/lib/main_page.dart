import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_view_builder_bloc/product_bloc.dart';
import 'package:list_view_builder_bloc/product_card.dart';

class MainPage extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('ListView Builder + BLoC'),
        backgroundColor: Colors.pink[100],
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              bloc.dispatch(
                r.nextInt(4) + 2,
              );
            },
            child: Text('Load Data'),
            color: Colors.amberAccent,
          ),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    url: products[index].url,
                    name: products[index].name,
                    price: products[index].price.toString(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
