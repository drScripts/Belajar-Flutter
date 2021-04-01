part of 'counterb_bloc.dart';

@immutable
abstract class CounterbState {}

class CounterbInitial extends CounterbState {}

class InitializebCounter extends CounterbState {
  final int number;
  InitializebCounter(this.number);
}
