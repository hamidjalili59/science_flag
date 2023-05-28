part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.refresh() = _Refresh;
  const factory NotesEvent.getNotesItem() = _GetNotesItem;
  const factory NotesEvent.createNotesItem(NotesItemListModel? note) =
      _CreateNotesItem;
  const factory NotesEvent.deleteNotesItem(NotesItemListModel? note) =
      _DeleteNotesItem;
  const factory NotesEvent.readNotesItem(NotesItemListModel? note) =
      _ReadNotesItem;
  const factory NotesEvent.editNotesItem(NotesItemListModel? note) =
      _EditNotesItem;
}
