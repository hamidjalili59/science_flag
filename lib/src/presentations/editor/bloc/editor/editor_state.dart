part of 'editor_bloc.dart';

@freezed
class EditorPageState with _$EditorPageState {
  const factory EditorPageState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Map<String, dynamic>> documentData,
    @Default(0) int selectPosition,
    FleatherController? controller,
  }) = _Idle;
}
