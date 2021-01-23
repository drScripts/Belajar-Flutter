import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/color_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/counter_bloc.dart';
import 'package:multi_bloc_in_multi_page/ui/draft_page.dart';
import 'package:multi_bloc_in_multi_page/ui/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterBloc counter = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, angka) => GestureDetector(
                  onTap: () {
                    counter.dispatch(angka + 1);
                  },
                  child: Text(
                    angka.toString(),
                    style: TextStyle(
                      fontSize: 49,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecodPage()),
                  );
                },
                child: Text(
                  'Click to Change',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                color: color,
                shape: StadiumBorder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
