import 'package:bloc_test/bloc_test.dart';
import 'package:cubit_test_demo/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Counter Cubit Test", () {
    blocTest<CounterCubit, int>("Initial Value",
        build: () => CounterCubit(), expect: () => []);
    blocTest<CounterCubit, int>("When Value Was Added",
        build: () => CounterCubit(),
        act: (bloc) async => bloc.increment(),
        expect: () => [1]);
    blocTest<CounterCubit, int>(
      "When Value Was Added twice",
      build: () => CounterCubit(),
      act: (bloc) async {
        bloc.increment();
        bloc.increment();
      },
      expect: () => [1, 2],
    );
    blocTest<CounterCubit, int>(
      "When State Doing Nothing",
      build: () => CounterCubit(),
      act: (bloc) async {
        bloc.increment();
        bloc.increment();
        bloc.increment();
        bloc.increment();
      },
      expect: () => [1, 2, 3, 4],
    );
  });
}
