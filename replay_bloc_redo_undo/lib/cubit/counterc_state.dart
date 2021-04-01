part of 'counterc_cubit.dart';

@immutable
abstract class CountercState {}

class CountercInitial extends CountercState {}

class InitialsCounter extends CountercState {
  final int number;
  InitialsCounter(this.number);
}
