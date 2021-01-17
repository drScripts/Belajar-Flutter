import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBloc {
  Color _color = Colors.amber;

  // membuat stream controller untuk event darii state
  StreamController<ColorEvent> _eventController =
      StreamController<ColorEvent>();
  StreamSink<ColorEvent> get eventSink => _eventController.sink;

  // membuat stram controller untuk colornya itu sendiri
  StreamController<Color> _stateColor = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateColor.sink;
  // output
  Stream<Color> get stateStream => _stateColor.stream;

  void _mapEventToState(ColorEvent cEvent) {
    if (cEvent == ColorEvent.toAmber) {
      _color = Colors.amber;
    } else {
      _color = Colors.blue;
    }

    _stateSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  // untuk menghilangkan ColorBloc yang sudah tidak terpakai
  void dispose() {
    _eventController.close();
    _stateColor.close();
  }
}
