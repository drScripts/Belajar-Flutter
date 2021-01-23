import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/color_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/counter_bloc.dart';
import 'package:multi_bloc_in_multi_page/ui/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(builder: (context) => ColorBloc()),
        BlocProvider<CounterBloc>(builder: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
