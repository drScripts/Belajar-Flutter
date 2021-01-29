import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    yield (event is Increment)
        ? CounterState(state.val + 1)
        : CounterState(state.val - 1);
  }

  @override
  CounterState get initialState => throw CounterState(0);
}
