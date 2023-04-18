part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.addTool(
      String widgetType, List<Map<String, dynamic>> stackWidget) = _AddTool;
  const factory EditorEvent.removeTool(String widgetType, String tag) =
      _RemoveTool;
  const factory EditorEvent.switchPosition(int position, String widgetType) =
      _SwitchPosition;
  const factory EditorEvent.updateTool(
    String widgetType,
    String tag,
    List<Map<String, dynamic>> stackWidget,
  ) = _UpdateTool;
}
