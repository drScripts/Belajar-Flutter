part of 'counter_cubit_cubit.dart';

@immutable
abstract class CounterCubitState {}

class CounterCubitInitial extends CounterCubitState {}

class CounterCubitfilled extends CounterCubitState {
  final int value;
  CounterCubitfilled(this.value);
}
