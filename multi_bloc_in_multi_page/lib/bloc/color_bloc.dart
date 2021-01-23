import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toPink, toAmber, toBlue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  //Bloc<(yang diterima),(yang dikembalikan)>
  @override
  // TODO: implement initialState
  Color get initialState => Colors.pink;

  @override
  Stream<Color> mapEventToState(event) async* {
    yield (event == ColorEvent.toPink)
        ? Colors.pink
        : (event == ColorEvent.toAmber)
            ? Colors.amber
            : Colors.blue;
  }
}
