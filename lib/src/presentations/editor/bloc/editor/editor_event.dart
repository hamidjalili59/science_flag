part of 'editor_bloc.dart';

@freezed
class EditorPageEvent with _$EditorPageEvent {
  const factory EditorPageEvent.addTool(
    String widgetType,
    int position,
    bool inline,
  ) = _AddTool;
  const factory EditorPageEvent.removeTool(
    String widgetType,
    int position,
  ) = _RemoveTool;
  const factory EditorPageEvent.switchPosition(
    String widgetType,
    int position,
  ) = _SwitchPosition;
  const factory EditorPageEvent.readDocument(
    List<Map<String, dynamic>> data,
  ) = _ReadDocument;
  const factory EditorPageEvent.saveDocument() = _SaveDocument;
  const factory EditorPageEvent.exitDocument() = _ExitDocument;
  const factory EditorPageEvent.recordAudio() = _RecordAudio;
  const factory EditorPageEvent.playAudio() = _PlayAudio;
  const factory EditorPageEvent.updateTool(
    String widgetType,
    EditorItemList stackWidget,
  ) = _UpdateTool;
}
