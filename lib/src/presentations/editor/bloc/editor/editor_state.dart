part of 'editor_bloc.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.idle({
    @Default([]) List<EditorItemList> stackWidgetData,
    @Default(0) int selectPosition,
    @Default([]) List<EditorItemList> stackWidgetList,
  }) = _Idle;
}
