import 'package:cubit_new_version/cubit/counters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => CountersCubit(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.black,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cubit Provider Counter',
                    style: TextStyle(color: Colors.white, fontSize: 26),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<CountersCubit, CountersState>(
                    builder: (_, state) => Text(
                      (state is CounterCubitField) ? "${state.value}" : "-",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.bloc<CountersCubit>().cubitIncrement(1);
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.bloc<CountersCubit>().clearValue();
                    },
                    child: Text('clear'),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cubit Provider Counter',
                    style: TextStyle(fontSize: 26),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BlocBuilder<CountersCubit, CountersState>(
                    builder: (_, state) => Text(
                      (state is CounterCubitField) ? "${state.value}" : "-",
                      style: TextStyle(fontSize: 26),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.bloc<CountersCubit>().cubitIncrement(1);
                    },
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.bloc<CountersCubit>().clearValue();
                    },
                    child: Text('clear'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
