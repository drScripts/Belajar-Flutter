import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_auto_loading_bloc/bloc/post_bloc.dart';
import 'package:infinite_auto_loading_bloc/ui/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
        builder: (context) {
          return PostBloc()..add(PostEvent());
        },
        child: MainPage(),
      ),
    );
  }
}
