part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrememt extends CounterEvent {}
