part of 'listview_bloc.dart';

@freezed
class ListviewState with _$ListviewState {
  const factory ListviewState.initial() = _Initial;
  const factory ListviewState.loadInProgress() = _LoadInProgress;
}