part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.addTool(
    String widgetType,
    EditorItemList stackWidget,
  ) = _AddTool;
  const factory EditorEvent.addBlocTool(
    EditorItemList stackWidget,
    EditorItemLayoutType type,
  ) = _AddBlocTool;
  const factory EditorEvent.removeTool(
    String widgetType,
    String tag,
  ) = _RemoveTool;
  const factory EditorEvent.switchPosition(
    int position,
    String widgetType,
  ) = _SwitchPosition;
  const factory EditorEvent.recordAudio(
      int position, EditorItemList stackWidget) = _RecordAudio;
  const factory EditorEvent.playAudio(
      int position, EditorItemList stackWidget) = _PlayAudio;
  const factory EditorEvent.updateTool(
    String widgetType,
    EditorItemList stackWidget,
  ) = _UpdateTool;
}
