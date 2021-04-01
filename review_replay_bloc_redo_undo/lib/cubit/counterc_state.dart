part of 'counterc_cubit.dart';

@immutable
abstract class CountercState {}

class CountercInitial extends CountercState {}

class InitializecCounter extends CountercState {
  final number;
  InitializecCounter(this.number);
}
