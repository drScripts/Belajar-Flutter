import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/color_bloc.dart';
import 'package:multi_bloc_in_multi_page/bloc/counter_bloc.dart';
import 'package:multi_bloc_in_multi_page/ui/draft_page.dart';

class SecodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      onPressed: () {
                        colorBloc.dispatch(ColorEvent.toPink);
                      },
                      color: Colors.pink,
                      shape: (color == Colors.pink)
                          ? CircleBorder(
                              side: BorderSide(color: Colors.black, width: 3),
                            )
                          : CircleBorder()),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.toAmber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.dispatch(ColorEvent.toBlue);
                    },
                    color: Colors.blue,
                    shape: (color == Colors.blue)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : CircleBorder(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
