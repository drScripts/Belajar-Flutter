import 'package:bloc_test_simulasi/bloc/counter_bloc1_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group("Testing Counter Bloc", () {
    blocTest("Initial State", build: () => CounterBloc1Bloc(), expect: []);
    blocTest("Add Event",
        build: () => CounterBloc1Bloc(),
        act: (bloc) async {
          bloc.add(Add(1));
        },
        expect: [1]);
    blocTest("Subtract Event",
        build: () => CounterBloc1Bloc(),
        act: (bloc) async {
          bloc.add(Subtract(3));
        },
        expect: [-3]);
    blocTest("Multi Act",
        build: () => CounterBloc1Bloc(),
        act: (bloc) async {
          bloc.add(Add(10));
          bloc.add(Subtract(3));
        },
        expect: [10, 7]);
    blocTest("Do Nothing Act",
        build: () => CounterBloc1Bloc(),
        act: (bloc) async {
          bloc.add(Add(10));
          bloc.add(Subtract(3));
          bloc.add(DoNothing());
        },
        expect: [10, 7]);
  });
}
