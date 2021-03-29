part of 'counters_cubit.dart';

@immutable
abstract class CountersState {}

class CountersInitial extends CountersState {}

class CounterCubitField extends CountersState {
  final int value;
  CounterCubitField(this.value);
}
