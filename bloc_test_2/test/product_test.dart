import 'package:bloc_test_2/bloc/product_bloc.dart';
import 'package:bloc_test_2/list_product/product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group("Product Bloc Test", () {
    blocTest("Initial Product Bloc", build: () => ProductBloc(), expect: []);
    blocTest("Add Product With 0 Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(AddProduct(Product(name: "Apel", price: 2000)));
        },
        expect: [
          ProductLoaded([Product(name: "Apel", price: 2000)])
        ]);
    blocTest("Add Product With Already Have 1 Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(AddProduct(Product(name: "Apel", price: 2000)));
          bloc.add(AddProduct(Product(name: "Sayur", price: 22000)));
        },
        expect: [
          ProductLoaded([Product(name: "Apel", price: 2000)]),
          ProductLoaded([
            Product(name: "Apel", price: 2000),
            Product(name: "Sayur", price: 22000)
          ])
        ]);
    blocTest("Remove Product With 0 Product / initial product only",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(RemoveProduct(Product(name: "Apel", price: 2000)));
        },
        expect: [ProductInitial()]);
    blocTest("Remove Product With already have 1 Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(AddProduct(Product(name: "Apel", price: 2000)));
          bloc.add(RemoveProduct(Product(name: "Apel", price: 2000)));
        },
        expect: [
          ProductLoaded([Product(name: "Apel", price: 2000)]),
          ProductLoaded([])
        ]);
  });
}
