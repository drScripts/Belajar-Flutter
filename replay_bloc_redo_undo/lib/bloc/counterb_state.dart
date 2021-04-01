part of 'counterb_bloc.dart';

@immutable
abstract class CounterbState {}

class CounterbInitial extends CounterbState {}

class InitialCounter extends CounterbState {
  final number;
  InitialCounter(this.number);
}
