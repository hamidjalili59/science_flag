part of 'editor_bloc.dart';

@freezed
class EditorPageEvent with _$EditorPageEvent {
  const factory EditorPageEvent.addTool(
    String widgetType,
    TextSelection textSelection,
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
  const factory EditorPageEvent.recordAudio(
    bool isRecording,
  ) = _RecordAudio;

  const factory EditorPageEvent.readDocument(
    String? name,
  ) = _ReadDocument;
  const factory EditorPageEvent.saveDocument() = _SaveDocument;
  const factory EditorPageEvent.exitDocument() = _ExitDocument;
  const factory EditorPageEvent.playAudio(bool play, String path) = _PlayAudio;
  const factory EditorPageEvent.updateTool(
    String widgetType,
    int offset,
    int length,
    bool inline,
  ) = _UpdateTool;
}
