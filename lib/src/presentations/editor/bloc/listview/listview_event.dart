part of 'listview_bloc.dart';

@freezed
class ListviewEvent with _$ListviewEvent {
  const factory ListviewEvent.addBlocTool(
    // EditorItemList stackWidget,
    EditorItemLayoutType type,
  ) = _AddBlocTool;
}
