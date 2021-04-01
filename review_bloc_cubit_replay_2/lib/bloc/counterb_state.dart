part of 'counterb_bloc.dart';

@immutable
abstract class CounterbState {}

class CounterbInitial extends CounterbState {}

class InitilizeBCounter extends CounterbState {
  final int number;
  InitilizeBCounter(this.number);
}
