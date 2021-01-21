import 'package:bloc/bloc.dart';

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> product = [];
    for (int i = 0; i < event; i++) {
      product.add(
        Product(
            name: 'Aneka Buah Buahan $i',
            price: i + 1 * 5000,
            url:
                'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/325253_2200-1200x628.jpg'),
      );
      yield product;
    }
  }
}

class Product {
  String url;
  String name;
  int price;

  Product({this.name = "", this.url = "", this.price = 0});
}
