import 'package:meta/meta.dart';
import 'package:replay_bloc/replay_bloc.dart';

part 'counterc_state.dart';

class CountercCubit extends ReplayCubit<CountercState> {
  CountercCubit() : super(CountercInitial());

  void increment() {
    if (state is InitialsCounter) {
      emit(InitialsCounter((state as InitialsCounter).number + 1));
    } else {
      emit(InitialsCounter(0));
    }
  }
}
