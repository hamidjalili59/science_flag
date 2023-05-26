part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.refresh() = _Refresh;
  const factory NotesEvent.getNotesItem() = _GetNotesItem;
  const factory NotesEvent.createNotesItem() = _CreateNotesItem;
  const factory NotesEvent.deleteNotesItem() = _DeleteNotesItem;
  const factory NotesEvent.readNotesItem() = _ReadNotesItem;
  const factory NotesEvent.editNotesItem() = _EditNotesItem;
}
