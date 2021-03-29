import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

class CounterCubitCubit extends Cubit<CounterCubitState> {
  CounterCubitCubit() : super(CounterCubitInitial());

  void cubitIncrement(int value) {
    emit((state is CounterCubitfilled)
        ? (state as CounterCubitfilled).value + value
        : CounterCubitfilled(0));
  }
}
