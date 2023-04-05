part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.refresh() = _Refresh;
  const factory NotesEvent.getNotesItem() = _GetNotesItem;
}
