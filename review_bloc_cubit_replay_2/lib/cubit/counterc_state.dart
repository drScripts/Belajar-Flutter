part of 'counterc_cubit.dart';

@immutable
abstract class CountercState {}

class CountercInitial extends CountercState {}

class InitializecCounter extends CountercState {
  final int number;

  InitializecCounter(this.number);
}
