part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddInt extends CounterEvent {
  final int value;
  AddInt(this.value);
}
