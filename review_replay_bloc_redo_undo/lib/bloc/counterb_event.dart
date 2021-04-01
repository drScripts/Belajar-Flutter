part of 'counterb_bloc.dart';

@immutable
abstract class CounterbEvent extends ReplayEvent {}

class AddInst extends CounterbEvent {}
