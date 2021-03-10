part of 'counter_bloc1_bloc.dart';

@immutable
abstract class CounterBloc1Event {
  final int amount;
  CounterBloc1Event(this.amount);
}

class Add extends CounterBloc1Event {
  Add(int amount) : super(amount);
}

class Subtract extends CounterBloc1Event {
  Subtract(int amount) : super(amount);
}

class DoNothing extends CounterBloc1Event {
  DoNothing() : super(null);
}
