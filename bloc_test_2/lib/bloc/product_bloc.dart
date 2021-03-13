import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_test_2/list_product/product.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    if (event is AddProduct) {
      if (state is ProductInitial) {
        yield ProductLoaded([event.product]);
      } else {
        yield ProductLoaded(
            (state as ProductLoaded).products + [event.product]);
      }
    } else if (event is RemoveProduct) {
      if (state is ProductInitial) {
        yield state;
      } else {
        yield ProductLoaded((state as ProductLoaded)
            .products
            .where((element) => element != event.product)
            .toList());
      }
    }
  }
}
