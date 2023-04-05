part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<NotesItemListModel> notes,
  }) = _Idle;
  const factory NotesState.failed() = _Failed;
}
