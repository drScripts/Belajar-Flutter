import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/UI/main_page.dart';
import 'package:mvvm_architecture/bloc/user_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<UserBloc>(
        builder: (context) => UserBloc(),
        child: MainPage(),
      ),
    );
  }
}
