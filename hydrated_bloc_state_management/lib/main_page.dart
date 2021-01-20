import 'package:flutter/material.dart';
import 'color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc color = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              color.dispatch(ColorEvent.toAmber);
            },
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              color.dispatch(ColorEvent.toBlue);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Hydrated BloC State Management'),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, colors) => AnimatedContainer(
            width: 100,
            height: 100,
            duration: Duration(seconds: 1),
            color: colors,
          ),
        ),
      ),
    );
  }
}
