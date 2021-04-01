import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:replay_bloc_redo_undo/bloc/counterb_bloc.dart';
import 'package:replay_bloc_redo_undo/cubit/counterc_cubit.dart';
import 'package:replay_bloc_redo_undo/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(providers: [
        BlocProvider(create: (_) => CounterbBloc()),
        BlocProvider(create: (_) => CountercCubit()),
      ], child: MainPage()),
    );
  }
}
