part of 'editor_bloc.dart';

@freezed
class EditorPageState with _$EditorPageState {
  const factory EditorPageState.idle({
    @Default(false) bool isLoading,
    @Default(false) bool inRecording,
    @Default(false) bool isPlaying,
    @Default([]) List<Map<String, dynamic>> documentData,
    @Default(0) int selectPosition,
    FleatherController? controller,
    @Default('new') String name,
  }) = _Idle;
}
