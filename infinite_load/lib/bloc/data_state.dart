part of 'data_bloc.dart';

@immutable
abstract class DataState {}

class DataInitial extends DataState {}

class DataLoaded extends DataState {
  final List<DataModels> data;
  final bool hasReachMax;
  DataLoaded({this.data, this.hasReachMax});

  DataLoaded copyWith({List<DataModels> data, bool hasReachMax}) {
    return DataLoaded(
      data: data ?? this.data,
      hasReachMax: hasReachMax ?? this.hasReachMax,
    );
  }
}
