part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.refresh() = _Refresh;
  const factory EditorEvent.addTool(
      String widgetType, Map<String, dynamic> stackWidget) = _AddTool;
  const factory EditorEvent.removeTool(String widgetType, String tag) =
      _RemoveTool;
  const factory EditorEvent.updateTool(
    String widgetType,
    String tag,
    Map<String, dynamic> config,
  ) = _UpdateTool;
}
