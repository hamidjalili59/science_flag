part of 'editor_bloc.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Map<String, dynamic>> stackWidgetData,
    @Default(0) int selectPosition,
  }) = _Idle;
  const factory EditorState.sucess() = _Sucess;
  const factory EditorState.failed() = _Failed;
}
