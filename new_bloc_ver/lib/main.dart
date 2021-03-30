import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_bloc_ver/bloc/counter_bloc.dart';
import 'package:new_bloc_ver/number_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState = context.watch<CounterBloc>().state;
    int number = context.select<CounterBloc, int>((counterBloc) =>
        (counterBloc.state is CounterValue)
            ? (counterBloc.state as CounterValue).value
            : null);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bloc 6.1.x'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) => NumberCard(
                    title: "Bloc\nBuilder",
                    number: (state is CounterValue) ? state.value : null,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                NumberCard(
                  title: "Watch",
                  number: (counterState is CounterValue)
                      ? counterState.value
                      : null,
                ),
                SizedBox(
                  width: 20,
                ),
                NumberCard(
                  title: "Select",
                  number: number,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Increment());
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(Clean());
              },
              child: Text('Clean'),
            ),
          ],
        ),
      ),
    );
  }
}
