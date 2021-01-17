import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { toBlue, toAmber }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;
  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.blue;
    yield _color;
  }
}
