import 'package:bloc_state_management_library/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.toBlue);
            },
            backgroundColor: Colors.blue,
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.toAmber);
            },
            backgroundColor: Colors.amber,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: Text(
          'Bloc State Management Library',
        ),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
            width: 100,
            height: 100,
            duration: Duration(milliseconds: 500),
            color: currentColor,
          ),
        ),
      ),
    );
  }
}
