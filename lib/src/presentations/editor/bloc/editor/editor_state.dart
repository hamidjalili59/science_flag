part of 'editor_bloc.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.idle({
    @Default(false) bool isLoading,
    @Default({}) Map<String, dynamic> stackWidgetData,
  }) = _Idle;
  const factory EditorState.sucess() = _Sucess;
  const factory EditorState.failed() = _Failed;
}
