import 'package:meta/meta.dart';
import 'package:replay_bloc/replay_bloc.dart';

part 'counterc_state.dart';

class CountercCubit extends ReplayCubit<CountercState> {
  CountercCubit() : super(CountercInitial());

  void increment() {
    if (state is CountercInitial) {
      emit(InitializecCounter(0));
    } else {
      emit(InitializecCounter((state as InitializecCounter).number + 1));
    }
  }
}
