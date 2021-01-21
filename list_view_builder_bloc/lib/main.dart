import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:list_view_builder_bloc/main_page.dart';
import 'package:list_view_builder_bloc/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ProductBloc>(
        builder: (context) => ProductBloc(),
        child: MainPage(),
      ),
    );
  }
}
