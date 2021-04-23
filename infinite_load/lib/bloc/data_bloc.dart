import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:infinite_load/models/data_models.dart';
import 'package:meta/meta.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial());

  @override
  Stream<DataState> mapEventToState(
    DataEvent event,
  ) async* {
    if (event is InitEvent) {
      List<DataModels> posts;
      if (state is DataInitial) {
        posts = await DataModels().getData(0, 10);
        yield DataLoaded(data: posts, hasReachMax: false);
      } else {
        DataLoaded dataLoaded = state as DataLoaded;
        posts = await DataModels().getData(dataLoaded.data.length, 10);
        yield (posts.isEmpty) ? dataLoaded.copyWith(hasReachMax: true) : DataLoaded(data: posts, hasReachMax: false);
      }
    }
  }
}
