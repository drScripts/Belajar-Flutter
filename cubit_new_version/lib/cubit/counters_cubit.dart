import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counters_state.dart';

class CountersCubit extends Cubit<CountersState> {
  CountersCubit() : super(CountersInitial());

  void cubitIncrement(int value) {
    emit((state is CounterCubitField)
        ? CounterCubitField((state as CounterCubitField).value + value)
        : CounterCubitField(0));
  }

  void clearValue() {
    emit(CounterCubitField(0));
  }
}
