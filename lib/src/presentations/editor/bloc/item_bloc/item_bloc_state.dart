part of 'item_bloc_bloc.dart';

@freezed
class ItemBlocState with _$ItemBlocState {
  const factory ItemBlocState.initial() = _Initial;
  const factory ItemBlocState.loadInProgress() = _LoadInProgress;
}