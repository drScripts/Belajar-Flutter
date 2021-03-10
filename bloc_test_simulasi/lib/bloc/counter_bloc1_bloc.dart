import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_bloc1_event.dart';

class CounterBloc1Bloc extends Bloc<CounterBloc1Event, int> {
  CounterBloc1Bloc() : super(0);

  @override
  Stream<int> mapEventToState(
    CounterBloc1Event event,
  ) async* {
    if (event is Add) {
      yield state + event.amount;
    } else if (event is Subtract) {
      yield state - event.amount;
    } else if (event is DoNothing) {
      yield state;
    }
  }
}
